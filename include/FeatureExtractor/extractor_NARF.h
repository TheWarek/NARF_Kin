#ifndef EXTRACTOR_NARF_H
#define EXTRACTOR_NARF_H

#include <iostream>

#include <boost/thread/thread.hpp>
#include <pcl/range_image/range_image.h>
#include <pcl/io/pcd_io.h>
#include <pcl/visualization/range_image_visualizer.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/features/range_image_border_extractor.h>
#include <pcl/keypoints/narf_keypoint.h>
#include <pcl/features/narf_descriptor.h>
#include <pcl/console/parse.h>

namespace FeatureExtractor
{

class Extractor_narf
{

public:

	/**
	* @brief NARF parameters
	*/
	float angular_resolution;
	float support_size;
	pcl::RangeImage::CoordinateFrame coordinate_frame;
	bool setUnseenToMaxRange;
	bool rotation_invariant;
	/**
	 * @brief constructor
	 */
	Extractor_narf();

private:
	void setParameters();

};

}

#endif // EXTRACTOR_NARF_H
