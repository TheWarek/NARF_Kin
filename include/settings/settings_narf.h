#ifndef SETTINGS_NARF_H
#define SETTINGS_NARF_H

#include <QDialog>
#include "include/FeatureExtractor/extractor_narf.h"

using namespace FeatureExtractor;

namespace Ui {
class Settings_narf;
}

class Settings_narf : public QDialog
{
	Q_OBJECT

public:
	explicit Settings_narf(QWidget *parent = 0, Extractor_narf *mNarf_extractor = NULL);
	~Settings_narf();

private:
	Ui::Settings_narf *ui;
	Extractor_narf *mNarf;

private slots:
	void Settings_narf::accept();
};

#endif // SETTINGS_NARF_H
