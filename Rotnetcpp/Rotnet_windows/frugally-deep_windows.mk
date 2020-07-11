##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=frugally-deep_windows
ConfigurationName      :=Debug
WorkspacePath          :=C:/developpement/git/Rotnet/Rotnetcpp
ProjectPath            :=C:/developpement/git/Rotnet/Rotnetcpp/Rotnet_windows
IntermediateDirectory  :=$(ConfigurationName)
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=jfigu
Date                   :=11/07/2020
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/msys64/mingw64/bin/clang++.exe
SharedObjectLinkerName :=C:/msys64/mingw64/bin/clang++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="frugally-deep_windows.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/msys64/mingw64/bin/windres.exe
LinkOptions            := $(shell ../../../../git_gcc/Regards/libextern/wxWidgets-master/wx-config --libs --unicode=yes) -Wl,--allow-multiple-definition  
IncludePath            := $(IncludeSwitch)/mingw64/x86_64-w64-mingw32/include/gdiplus $(IncludeSwitch)/home/jfigu/ffmpeg_build/include $(IncludeSwitch)/mingw64/include/eigen3 $(IncludeSwitch)/mingw64/include/opencv4  $(IncludeSwitch). $(IncludeSwitch)../lib/frugally-deep/include $(IncludeSwitch)../lib/FunctionalPlus-0.2.8-p0/include $(IncludeSwitch)../lib/json-3.8.0/include $(IncludeSwitch)../lib/eigen $(IncludeSwitch)/mingw64/include/opencv4 $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)opencv_core $(LibrarySwitch)opencv_dnn $(LibrarySwitch)opencv_imgproc $(LibrarySwitch)opencv_imgcodecs 
ArLibs                 :=  "opencv_core" "opencv_dnn" "opencv_imgproc" "opencv_imgcodecs" 
LibPath                :=$(LibraryPathSwitch)/home/jfigu/ffmpeg_build/lib  $(LibraryPathSwitch). $(LibraryPathSwitch)$$HOME/ffmpeg_build/lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/msys64/mingw64/bin/ar.exe rcu
CXX      := C:/msys64/mingw64/bin/clang++.exe
CC       := C:/msys64/mingw64/bin/clang.exe
CXXFLAGS := -std=c++14 -Wall $(shell ../../../../git_gcc/Regards/libextern/wxWidgets-master/wx-config --cppflags) -Wextra -Werror -Wno-deprecated-copy -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/msys64/mingw64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
PATH:=C:\msys64\usr\bin;c:/developpement/git_gcc/Regards/libextern/wxWidgets-master/include;c:/developpement/git_gcc/Regards/libextern/wxWidgets-master/lib/wx/include/msw-unicode-static-3.1;$PATH
WXWIN:=C:\Regards\libextern\wxwidgets-3.1.2
WXCFG:=lib/mswud
Objects0=$(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(ConfigurationName)"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(ConfigurationName)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/developpement/git/Rotnet/Rotnetcpp/Rotnet_windows/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(ConfigurationName)/


