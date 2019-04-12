/****************************************************************************
** Meta object code from reading C++ file 'capteur.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.11.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/capteur.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'capteur.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.11.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Capteur_t {
    QByteArrayData data[8];
    char stringdata0[60];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Capteur_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Capteur_t qt_meta_stringdata_Capteur = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Capteur"
QT_MOC_LITERAL(1, 8, 11), // "tempChanged"
QT_MOC_LITERAL(2, 20, 0), // ""
QT_MOC_LITERAL(3, 21, 11), // "presChanged"
QT_MOC_LITERAL(4, 33, 11), // "humiChanged"
QT_MOC_LITERAL(5, 45, 4), // "temp"
QT_MOC_LITERAL(6, 50, 4), // "pres"
QT_MOC_LITERAL(7, 55, 4) // "humi"

    },
    "Capteur\0tempChanged\0\0presChanged\0"
    "humiChanged\0temp\0pres\0humi"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Capteur[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       3,   32, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x06 /* Public */,
       3,    0,   30,    2, 0x06 /* Public */,
       4,    0,   31,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
       5, QMetaType::Int, 0x00495103,
       6, QMetaType::Int, 0x00495103,
       7, QMetaType::Int, 0x00495103,

 // properties: notify_signal_id
       0,
       1,
       2,

       0        // eod
};

void Capteur::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Capteur *_t = static_cast<Capteur *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->tempChanged(); break;
        case 1: _t->presChanged(); break;
        case 2: _t->humiChanged(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Capteur::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Capteur::tempChanged)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Capteur::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Capteur::presChanged)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Capteur::*)();
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Capteur::humiChanged)) {
                *result = 2;
                return;
            }
        }
    }
#ifndef QT_NO_PROPERTIES
    else if (_c == QMetaObject::ReadProperty) {
        Capteur *_t = static_cast<Capteur *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< qint32*>(_v) = _t->temp(); break;
        case 1: *reinterpret_cast< qint32*>(_v) = _t->pres(); break;
        case 2: *reinterpret_cast< qint32*>(_v) = _t->humi(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        Capteur *_t = static_cast<Capteur *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setTemp(*reinterpret_cast< qint32*>(_v)); break;
        case 1: _t->setPres(*reinterpret_cast< qint32*>(_v)); break;
        case 2: _t->setHumi(*reinterpret_cast< qint32*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject Capteur::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Capteur.data,
      qt_meta_data_Capteur,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *Capteur::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Capteur::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Capteur.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Capteur::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#ifndef QT_NO_PROPERTIES
   else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Capteur::tempChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Capteur::presChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Capteur::humiChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
