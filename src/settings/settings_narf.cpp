#include "include/settings/settings_narf.h"
#include "include/FeatureExtractor/extractor_narf.h"
#include "ui_settings_narf.h"

settings_narf::settings_narf(QWidget *parent) :
	QDialog(parent),
	ui(new Ui::settings_narf)
{
	ui->setupUi(this);
}

settings_narf::~settings_narf()
{
	delete ui;
}
