#-------------------------------------------------
#
# Project created by QtCreator 2014-07-19T16:35:56
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NARF_Kin
TEMPLATE = app


SOURCES += src/main/main.cpp\
		src/main/mainwindow.cpp \
	src/settings/settings_narf.cpp \
    src/FeatureExtractor/extractor_narf.cpp

HEADERS  += include/main/mainwindow.h \
	include/settings/settings_narf.h \
    include/FeatureExtractor/extractor_narf.h

FORMS    += forms/main/mainwindow.ui \
    forms/settings/settings_narf.ui

### INCLUDES
INCLUDEPATH += $(PCL_ROOT)/include/pcl-1.6
INCLUDEPATH += $(PCL_ROOT)/3rdParty/Boost/include
INCLUDEPATH += $(PCL_ROOT)/3rdParty/Eigen/include
INCLUDEPATH += $(PCL_ROOT)/3rdParty/VTK/include/vtk-5.8
INCLUDEPATH += $(PCL_ROOT)/3rdParty/FLANN/include
INCLUDEPATH += $(OpenCV_DIR)/include

### LIBRARIES
LIBS += -L$(OPENCV_DIR)/x86/vc10/lib
LIBS += -L$(PCL_ROOT)/lib
LIBS += -L$(PCL_ROOT)/3rdParty/VTK/lib/vtk-5.8
LIBS += -L$(PCL_ROOT)/3rdParty/Boost/lib
LIBS += -L$(PCL_ROOT)/3rdParty/FLANN/lib
