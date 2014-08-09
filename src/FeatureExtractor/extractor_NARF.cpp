#include <include/FeatureExtractor/extractor_narf.h>

using namespace FeatureExtractor;

Extractor_narf::Extractor_narf()
{
	this->setParameters();
}

void Extractor_narf::setParameters()
{
	this->angular_resolution = 0.5f;
	this->support_size = 0.2f;
	coordinate_frame = pcl::RangeImage::CAMERA_FRAME;
	this->setUnseenToMaxRange = false;
	this->rotation_invariant = true;
}
