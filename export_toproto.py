from __future__ import print_function

import os
import cv2
import numpy as np
import argparse
import tensorflow as tf
from pathlib import Path
from keras.applications.imagenet_utils import preprocess_input
from keras import backend as K
from keras.models import load_model
from tensorflow.python.saved_model import builder as saved_model_builder
from tensorflow.python.saved_model.signature_def_utils import predict_signature_def
from tensorflow.python.saved_model import tag_constants

from utils import RotNetDataGenerator, crop_largest_rectangle, angle_error, rotate

def export_h5_to_pb(path_to_h5, export_path):

    # Set the learning phase to Test since the model is already trained.
    K.set_learning_phase(0)

    # Load the Keras model
    keras_model = load_model(path_to_h5)

    output_model_name = Path(path_to_h5).name
    output_model_stem = Path(path_to_h5).stem
    output_model_pbtxt_name = output_model_stem + '.pbtxt'

    # Build the Protocol Buffer SavedModel at 'export_path'
    builder = saved_model_builder.SavedModelBuilder(export_path)

    # Create prediction signature to be used by TensorFlow Serving Predict API
    signature = predict_signature_def(inputs={"images": keras_model.input},
                                      outputs={"scores": keras_model.output})

    with tf.compat.v1.keras.backend.get_session() as sess:
        # Save the meta graph and the variables
        builder.add_meta_graph_and_variables(sess=sess, tags=[tag_constants.SERVING],
                                         signature_def_map={"predict": signature})
        tf.io.write_graph(sess.graph.as_graph_def(), str(export_path),
                             output_model_pbtxt_name, as_text=True)

    builder.save()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('model', help='Path to model')
    parser.add_argument('output_path', help='Path to image or directory')
    args = parser.parse_args()

    if tf.executing_eagerly():
       tf.compat.v1.disable_eager_execution()

    export_h5_to_pb(args.model, args.output_path)



