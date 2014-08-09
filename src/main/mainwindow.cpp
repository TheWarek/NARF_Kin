#include "include/main/mainwindow.h"
#include "ui_mainwindow.h"

#include "include/FeatureExtractor/extractor_narf.h"


using namespace FeatureExtractor;

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);
	this->mNarf_extractor = NULL;
	this->mNarf_window = NULL;
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::on_pushButton_start_clicked()
{
	if (ui->comboBox_descriptor->currentText().compare("NARF")==0)
	{
		// NARF extraction
		if (this->mNarf_extractor == NULL)
		{
			this->mNarf_extractor = new FeatureExtractor::Extractor_narf();
		}
		// start
	}
}

void MainWindow::on_pushButton_settings_clicked()
{
	if (this->mNarf_extractor == NULL)
	{
		this->mNarf_extractor = new FeatureExtractor::Extractor_narf();
	}
	mNarf_window = new Settings_narf(this,this->mNarf_extractor);
	mNarf_window->exec();
}
