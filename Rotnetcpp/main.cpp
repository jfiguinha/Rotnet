#include <fdeep/fdeep.hpp>
#include <opencv2/opencv.hpp>

int main()
{
    cv::Size size(224,224);//the dst image size,e.g.100x100
    cv::Mat dst;//dst image
    const cv::Mat image = cv::imread("/home/figuinha/developpement/picture/photo.jpg");
    cv::cvtColor(image, image, cv::COLOR_BGR2RGB);
    cv::resize(image,dst,size);
    assert(image.isContinuous());
    const auto model = fdeep::load_model("model/rotnet_street_view_resnet50_keras2.json");
    // Use the correct scaling, i.e., low and high.
    const auto input = fdeep::tensor_from_bytes(dst.ptr(),
        static_cast<std::size_t>(dst.rows),
        static_cast<std::size_t>(dst.cols),
        static_cast<std::size_t>(dst.channels()),
        0.0f, 1.0f);
    const auto result = model.predict_class({input});
    std::cout << result << std::endl;
}