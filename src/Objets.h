#pragma once
#include <QObject>

class Objets : public QObject
{
	Q_OBJECT
	Q_PROPERTY(qint32 temp READ temp		NOTIFY tempChanged)
private:
	qint32 m_temp  = 17;
signals:
	void tempChanged();
// public slots:
// 	void refresh();
public:
	Objets();
	qint32 temp() const;
};
