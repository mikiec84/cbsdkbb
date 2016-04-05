SETLOCAL

SET ARCH=%1

echo Installing libcouchbase %ARCH%
IF "%LCBVER%"=="" (
    SET LCBVER=2.5.3
)

CALL wsetup_lcb.bat %LCBVER% %ARCH%

echo Installing Node.js %ARCH%
CALL wsetup_njs.bat njs 0.10.42 %ARCH%
CALL wsetup_njs.bat njs 0.12.10 %ARCH%
CALL wsetup_njs.bat njs 4.3.0 %ARCH%
CALL wsetup_njs.bat njs 5.6.0 %ARCH%

echo Installing PHP %ARCH%
CALL wsetup_php.bat 5.4 5.4.45 vc9 %ARCH%
CALL wsetup_php.bat 5.5 5.5.31 vc11 %ARCH%
CALL wsetup_php.bat 5.6 5.6.17 vc11 %ARCH%
CALL wsetup_php.bat 7.0 7.0.5 vc14 %ARCH%

ENDLOCAL
