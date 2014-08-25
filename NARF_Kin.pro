#-------------------------------------------------
#
# Project created by QtCreator 2014-07-19T16:35:56
#
#-------------------------------------------------

QT       += core gui
QT       += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NARF_Kin
TEMPLATE = app

DEFINES +=NOMINMAX \
EIGEN_DEFAULT_TO_ROW_MAJOR \
WIN32

SOURCES += src/main/main.cpp\
		src/main/mainwindow.cpp \
	src/settings/settings_narf.cpp \
    src/FeatureExtractor/extractor_narf.cpp \
    src/Kinect/kinect_viewer.cpp

HEADERS  += include/main/mainwindow.h \
	include/settings/settings_narf.h \
    include/FeatureExtractor/extractor_narf.h \
    include/Kinect/kinect_viewer.h

FORMS    += forms/main/mainwindow.ui \
    forms/settings/settings_narf.ui

### INCLUDES
INCLUDEPATH += $(PCL_ROOT)/include/pcl-1.6
INCLUDEPATH += $(PCL_ROOT)/3rdParty/Boost/include
INCLUDEPATH += $(PCL_ROOT)/3rdParty/Eigen/include
INCLUDEPATH += $(PCL_ROOT)/3rdParty/VTK/include/vtk-5.8
INCLUDEPATH += $(PCL_ROOT)/3rdParty/FLANN/include
INCLUDEPATH += $(OpenCV_DIR)/include
INCLUDEPATH += $(OPEN_NI_INCLUDE) \

### LIBRARIES
#OpenCV
Debug: LIBS += -L$(OPENCV_DIR)/x86/vc10/lib/ \
-lopencv_core248d \
-lopencv_highgui248d  \
-lopencv_imgproc248d  \
-lopencv_features2d248d  \
-lopencv_calib3d248d \
-lopencv_contrib248d \
-lopencv_flann248d \
-lopencv_legacy248d \
-lopencv_ml248d \
-lopencv_objdetect248d \
-lopencv_ts248d \
#-lopencv_gpu248d \
-lopencv_video248d

#PCL
Debug: LIBS += -L$(PCL_ROOT)/lib/ \
-lpcl_apps_debug \
-lpcl_common_debug \
-lpcl_features_debug \
-lpcl_filters_debug \
-lpcl_io_debug \
-lpcl_io_ply_debug \
-lpcl_kdtree_debug \
-lpcl_keypoints_debug \
-lpcl_octree_debug \
#-lpcl_range_image_border_extractor_debug \
-lpcl_registration_debug \
-lpcl_sample_consensus_debug \
-lpcl_search_debug \
-lpcl_segmentation_debug \
-lpcl_surface_debug \
-lpcl_tracking_debug \
-lpcl_visualization_debug

#VTK
Debug: LIBS += -L$(PCL_ROOT)/3rdParty/VTK/lib/vtk-5.8/ \
-lMapReduceMPI-gd \
-lmpistubs-gd  \
-lQVTK-gd \
-lvtkalglib-gd \
-lvtkCharts-gd \
-lvtkCommon-gd \
-lvtkDICOMParser-gd \
-lvtkexoIIc-gd \
-lvtkexpat-gd \
-lvtkFiltering-gd \
-lvtkfreetype-gd \
-lvtkftgl-gd \
-lvtkGenericFiltering-gd \
-lvtkGeovis-gd \
-lvtkGraphics-gd \
-lvtkhdf5-gd \
-lvtkHybrid-gd \
-lvtkImaging-gd \
-lvtkInfovis-gd \
-lvtkIO-gd \
-lvtkjpeg-gd \
-lvtklibxml2-gd \
-lvtkmetaio-gd \
-lvtkNetCDF-gd \
-lvtkNetCDF_cxx-gd \
-lvtkpng-gd \
-lvtkproj4-gd \
-lvtkRendering-gd \
-lvtksqlite-gd \
-lvtksys-gd \
-lvtktiff-gd \
-lvtkverdict-gd \
-lvtkViews-gd \
-lvtkVolumeRendering-gd \
-lvtkWidgets-gd \
-lvtkzlib-gd

# Boost
Debug: LIBS += -L$(PCL_ROOT)/3rdParty/Boost/lib/ \
-llibboost_date_time-vc100-mt-gd-1_49 \
-llibboost_thread-vc100-mt-gd-1_49 \
-llibboost_filesystem-vc100-mt-gd-1_49 \
-llibboost_system-vc100-mt-gd-1_49 \
-llibboost_iostreams-vc100-mt-gd-1_49

#FLANN
Debug: LIBS += -L$(PCL_ROOT)/3rdParty/FLANN/lib/ \
-lflann_cpp_s-gd

#OpenNI
Debug: LIBS += -L$(OPEN_NI_LIB) \
-lopenNI \
-lOpenNI \
-lNiSampleModule \
-lNiSampleExtensionModule

#glut
Debug: LIBS += -lglut

# VTK dependency
Debug: LIBS += advapi32.lib

### Release LIBRARIES
#OpenCV
Release: LIBS += -L$(OPENCV_DIR)/x86/vc10/lib/ \
-lopencv_core248 \
-lopencv_highgui248  \
-lopencv_imgproc248  \
-lopencv_features2d248  \
-lopencv_calib3d248 \
-lopencv_contrib248 \
-lopencv_flann248 \
-lopencv_legacy248 \
-lopencv_ml248 \
-lopencv_objdetect248 \
-lopencv_ts248 \
#-lopencv_gpu248 \
-lopencv_video248

#PCL
Release: LIBS += -L$(PCL_ROOT)/lib/ \
-lpcl_apps_release \
-lpcl_common_release \
-lpcl_features_release \
-lpcl_filters_release \
-lpcl_io_release \
-lpcl_io_ply_release \
-lpcl_kdtree_release \
-lpcl_keypoints_release \
-lpcl_octree_release \
#-lpcl_range_image_border_extractor_release \
-lpcl_registration_release \
-lpcl_sample_consensus_release \
-lpcl_search_release \
-lpcl_segmentation_release \
-lpcl_surface_release \
-lpcl_tracking_release \
-lpcl_visualization_release

#VTK
Release: LIBS += -L$(PCL_ROOT)/3rdParty/VTK/lib/vtk-5.8/ \
-lMapReduceMPI \
-lmpistubs  \
-lQVTK \
-lvtkalglib \
-lvtkCharts \
-lvtkCommon \
-lvtkDICOMParser \
-lvtkexoIIc \
-lvtkexpat \
-lvtkFiltering \
-lvtkfreetype \
-lvtkftgl \
-lvtkGenericFiltering \
-lvtkGeovis \
-lvtkGraphics \
-lvtkhdf5 \
-lvtkHybrid \
-lvtkImaging \
-lvtkInfovis \
-lvtkIO \
-lvtkjpeg \
-lvtklibxml2 \
-lvtkmetaio \
-lvtkNetCDF \
-lvtkNetCDF_cxx \
-lvtkpng \
-lvtkproj4 \
-lvtkRendering \
-lvtksqlite \
-lvtksys \
-lvtktiff \
-lvtkverdict \
-lvtkViews \
-lvtkVolumeRendering \
-lvtkWidgets \
-lvtkzlib

# Boost
Release: LIBS += -L$(PCL_ROOT)/3rdParty/Boost/lib/ \
-llibboost_date_time-vc100-mt-1_49 \
-llibboost_thread-vc100-mt-1_49 \
-llibboost_filesystem-vc100-mt-1_49 \
-llibboost_system-vc100-mt-1_49 \
-llibboost_iostreams-vc100-mt-1_49

#FLANN
Release: LIBS += -L$(PCL_ROOT)/3rdParty/FLANN/lib/ \
-lflann_cpp_s

#OpenNI
Release: LIBS += -L$(OPEN_NI_LIB) \
-lopenNI \
-lOpenNI \
-lNiSampleModule \
-lNiSampleExtensionModule

#glut
Release: LIBS += -lglut

# VTK dependency
Release: LIBS += advapi32.lib
