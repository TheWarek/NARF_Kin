#ifndef KINECT_VIEWER_H
#define KINECT_VIEWER_H

#include <iostream>

#include <QThread>

#include <pcl/io/openni_grabber.h>
#include <pcl/io/pcd_io.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/console/parse.h>

using namespace pcl;

namespace Kinect
{

class Kinect_viewer : public QThread
{
public:

	Kinect_viewer();
	~Kinect_viewer();

	int isConnected();
	void initializeDevice();
	void grabberCallback(const PointCloud<pcl::PointXYZRGBA>::ConstPtr &cloud);
	void run();

	bool isStart;

private:

	/**
	 * @brief mKinectGrabber grabber interface
	 */
	Grabber *mKinectGrabber;
	/**
	 * @brief mViewer viewer (testing purposes)
	 */
	pcl::visualization::CloudViewer *mViewer;

};
}

#endif // KINECT_VIEWER_H
