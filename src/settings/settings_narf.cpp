#include "include/settings/settings_narf.h"
#include "ui_settings_narf.h"

Settings_narf::Settings_narf(QWidget *parent, Extractor_narf *mNarf_extractor) :
	QDialog(parent),
	ui(new Ui::Settings_narf)
{
	ui->setupUi(this);

	this->mNarf = mNarf_extractor;

	// show actual values
	ui->doubleSpinBox_ang_res->setValue(this->mNarf->angular_resolution);
	ui->doubleSpinBox_supp_size->setValue(this->mNarf->support_size);
	if (this->mNarf->setUnseenToMaxRange)
		ui->checkBox_range->setChecked(true);
	if (this->mNarf->rotation_invariant)
		ui->checkBox_rot_inv->setChecked(true);

}

Settings_narf::~Settings_narf()
{
	delete ui;
}

void Settings_narf::accept()
{
	// set values
	this->mNarf->angular_resolution = ui->doubleSpinBox_ang_res->value();
	this->mNarf->support_size = ui->doubleSpinBox_supp_size->value();
	this->mNarf->setUnseenToMaxRange = ui->checkBox_range->isChecked();
	this->mNarf->rotation_invariant = ui->checkBox_rot_inv->isChecked();
	Settings_narf::close();
}
