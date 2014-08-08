#include "include/main/mainwindow.h"
#include "ui_mainwindow.h"

#include "include/settings/settings_narf.h"

MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);
}

MainWindow::~MainWindow()
{
	delete ui;
}

void MainWindow::on_pushButton_clicked()
{
	settings_narf *_narf_window = new settings_narf(this);
	_narf_window->exec();
}
