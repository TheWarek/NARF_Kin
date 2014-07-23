#-------------------------------------------------
#
# Project created by QtCreator 2014-07-19T16:35:56
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NARF_Kin
TEMPLATE = app


SOURCES += src\\main\\main.cpp\
		src\\main\\mainwindow.cpp \
	src/FeatureExtractor/extractor_NARF.cpp

HEADERS  += include\\main\\mainwindow.h \
    include/FeatureExtractor/extractor_NARF.h

FORMS    += forms\\main\\mainwindow.ui

### INCLUDES
INCLUDEPATH += $(PCL_ROOT)\\include\\pcl-1.6
INCLUDEPATH += $(OpenCV_DIR)\\include

### LIBRARIES
LIBS += -L$(OPENCV_DIR)\\x86\\vc10\\lib


LIBS += -L$(PCL_ROOT)\\lib
