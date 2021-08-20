#ifndef SIMPLEWEATHERINFO_H
#define SIMPLEWEATHERINFO_H

#include <QWidget>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QLabel>
#include <QGridLayout>
#include <QPushButton>

#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QSslConfiguration>

#include <QJsonDocument>
#include <QJsonObject>
#include <QJsonArray>

#include "../common/comdefine.h"

class SimpleWeatherInfo : public QWidget
{
public:
    explicit SimpleWeatherInfo(QWidget *parent = nullptr);
    ~SimpleWeatherInfo();
    void setWeatherInfo(std::string name, std::string value);

protected:
    void resizeEvent(QResizeEvent *event);

signals:

private:
    void initialControl();

private:
    QHBoxLayout *hlayoutSimpleInfo=nullptr;
    QLabel *labelWeatherImg=nullptr;
    QGridLayout *gridlayoutDescription=nullptr;
        QLabel *labelWarning=nullptr;
        QLabel *labelTemperature=nullptr;
        QLabel *labelAirQuality=nullptr;//临时使用
        QLabel *labelRainStatus=nullptr;
        QLabel *labelTempMaxMin=nullptr;

    QString strStyle;

    std::map<std::string,QLabel * &> mapInfoLabel={
        std::pair<std::string,QLabel * &>("warn", labelWarning),
        std::pair<std::string,QLabel * &>("temp", labelTemperature),
        std::pair<std::string,QLabel * &>("airquality", labelAirQuality),
        std::pair<std::string,QLabel * &>("weather", labelRainStatus),
        std::pair<std::string,QLabel * &>("tempmaxmin", labelTempMaxMin),
        std::pair<std::string,QLabel * &>("weatherico", labelWeatherImg)
    };


};

#endif // SIMPLEWEATHERINFO_H
