#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "include/settings/settings_narf.h"
#include "include/Kinect/kinect_viewer.h"

using namespace Kinect;

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
	Q_OBJECT

public:
	explicit MainWindow(QWidget *parent = 0);
	~MainWindow();

	/**
	 * @brief mNarf_window parameters for NARF
	 */
	Settings_narf *mNarf_window;
	/**
	 * @brief mNarf_extractor NARF extractor object
	 */
	FeatureExtractor::Extractor_narf *mNarf_extractor;

	/**
	 * @brief MainWindow::isConnected simple check if device is connected
	 */
	void MainWindow::isConnected();

	/**
	 * @brief mKinect_viewer viewer object
	 */
	Kinect_viewer *mKinect_viewer;

private slots:
	void on_pushButton_start_clicked();

	void on_pushButton_settings_clicked();

private:
	Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
