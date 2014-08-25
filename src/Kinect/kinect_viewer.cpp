#include "include/Kinect/kinect_viewer.h"

#include <QDebug>

using namespace Kinect;

Kinect_viewer::Kinect_viewer()
{
	this->isStart = true;
}
Kinect_viewer::~Kinect_viewer()
{
	this->isStart = false;
}

int Kinect_viewer::isConnected()
{
	try {
		this->mKinectGrabber = new OpenNIGrabber();
		if (this->mKinectGrabber == 0)
			return -1;
		return 1;
	}
	catch(PCLIOException e)
	{
		qDebug() << QString::fromUtf8(e.detailedMessage().c_str());
	}
	return -1;
}

void Kinect_viewer::initializeDevice()
{
	boost::function<void (const PointCloud<PointXYZRGBA>::ConstPtr&)> f =
			boost::bind (&Kinect_viewer::grabberCallback, this, _1);
	this->mKinectGrabber->registerCallback(f);
}

void Kinect_viewer::grabberCallback(const PointCloud<pcl::PointXYZRGBA>::ConstPtr &cloud)
{
	if (! this->mViewer->wasStopped())
		this->mViewer->showCloud(cloud);
}

void Kinect_viewer::run()
{

	this->initializeDevice();
	this->mViewer = new pcl::visualization::CloudViewer("Viewer");

	this->mKinectGrabber->start();

	while (! this->mViewer->wasStopped()) //while (isStart)
		boost::this_thread::sleep(boost::posix_time::seconds(1));

	this->mKinectGrabber->stop();
}
