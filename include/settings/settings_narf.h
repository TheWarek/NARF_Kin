#ifndef SETTINGS_NARF_H
#define SETTINGS_NARF_H

#include <QDialog>

namespace Ui {
class settings_narf;
}

class settings_narf : public QDialog
{
	Q_OBJECT

public:
	explicit settings_narf(QWidget *parent = 0);
	~settings_narf();

private:
	Ui::settings_narf *ui;
};

#endif // SETTINGS_NARF_H
