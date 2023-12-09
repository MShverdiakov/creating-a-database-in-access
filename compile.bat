Del *.exe

rem call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Auxiliary\Build\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars32.bat"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"

cl.exe /c /Zi /nologo /W3 /WX- /O2 /Oi /Oy- /D WIN32 /D NDEBUG /D _CONSOLE /D _UNICODE /D UNICODE /Gm- /EHsc /MD /GS /Gy /fp:precise /Zc:wchar_t /Zc:forScope /Fo"RELEASE\\" /Fd"RELEASE\vc140.pdb" /Gd /TP /analyze- %~dp0CPP\main.cpp
Link.exe /OUT:main.exe /NOLOGO kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib legacy_stdio_definitions.lib CPP\oldnames.lib /PDB:"RELEASE\v140.pdb" /SUBSYSTEM:CONSOLE /MACHINE:X86 RELEASE\main.obj


del %~dp0RELEASE\*.pdb

del %~dp0RELEASE\*.obj

pause