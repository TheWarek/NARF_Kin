#include <include/FeatureExtractor/extractor_narf.h>

using namespace FeatureExtractor;

FeatureExtractor::extractor_narf::extractor_narf()
{
	this->angular_resolution = 0.5f;
	this->support_size = 0.2f;
	coordinate_frame = pcl::RangeImage::CAMERA_FRAME;
	this->setUnseenToMaxRange = false;
	this->rotation_invariant = true;
}
