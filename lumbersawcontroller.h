#ifndef LUMBERSAWCONTROLLER_H
#define LUMBERSAWCONTROLLER_H

#include <QObject>
#include <qqml.h>

class LumberSawController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isWorking READ isWorking NOTIFY isWorkingChanged FINAL)
    Q_PROPERTY(int sawSpeed READ sawSpeed WRITE setsawSpeed NOTIFY sawSpeedChanged FINAL)
    QML_ELEMENT
public:
    explicit LumberSawController(QObject *parent = nullptr);

    bool isWorking() const;
    int sawSpeed() const;
    void setsawSpeed(int newSawSpeed);

public slots:
    void start();
    void stop();

signals:
    void isWorkingChanged();
    void sawSpeedChanged();

private:
    void setIsWorking(bool newIsWorking);
private:
    bool m_isWorking;
    int m_sawSpeed = 0;    
};

#endif // LUMBERSAWCONTROLLER_H
