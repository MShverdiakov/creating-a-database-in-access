#define _WIN32_WINNT 0x0502

#ifndef _AFXDLL
#define _AFXDLL
#endif

#include "stdafx.h"
#include <afx.h>
#include <afxdb.h>
#include <iostream>
#include <windows.h>
#include <odbcinst.h>
#include <sql.h>
#include <sqlext.h>

int main(void)
{
    setlocale(LC_ALL, "RUS");

    CDatabase db;

    SQLConfigDataSource(NULL, ODBC_ADD_DSN, L"Microsoft Access Driver (*.mdb)", L"CREATE_DB=C:\\DB\\shverdiakov_lab1.mdb General\0");

    db.OpenEx(L"Driver={Microsoft Access Driver (*.mdb)};DBQ=C:\\DB\\shverdiakov_lab1.mdb;");

    db.ExecuteSQL(L"CREATE TABLE Инвентаризация ([Код] COUNTER, [Дата Рождения] DATE, [Хозяин] CHAR(20), [Наименование] CHAR(20));");

    std::cout << "База данных успешно создана." << std::endl;

    system("pause");

    return 0;
}