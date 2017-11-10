#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


    return app.exec();
}
/*
    ResizeQmlWindow resize;
    //QPaintEvent *e;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    engine.rootContext()->setContextProperty("resize",&resize);

    QObject *rootObject = engine.rootObjects().first();
    //qDebug()<<"111 ="<<rootObject<<rootObject->isWindowType();
    QWindow *w = qobject_cast<QWindow *>(rootObject);
    //qDebug()<<"main w ="<<w;

    if(w)
    {
        //qDebug()<<"w != NULL";
        resize.setWindow(w);
        w->setMinimumSize(QSize(640,480));
        //resize.paintEvent(e);
    }


*/
