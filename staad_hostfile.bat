@echo off

:: STAAD BLOCKLIST by ultrablitz798
:: updated 2026-02-17


SET NEWLINE=^& echo.

FIND /C /I "buddi.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 buddi.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "ims.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 ims.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "waz-search.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 waz-search.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "connect-agreement.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 connect-agreement.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "connect-wsg20.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 connect-wsg20.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "connect-recommendation.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 connect-recommendation.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "connect-updatev1.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 connect-updatev1.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "ulaspostingservice.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 ulaspostingservice.bentley.com>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "ulasproductinformationservice.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 ulasproductinformationservice.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "connect-ulastm.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 connect-ulastm.bentley.com>>%WINDIR%\System32\drivers\etc\hosts

FIND /C /I "communities.bentley.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1 communities.bentley.com>>%WINDIR%\System32\drivers\etc\hosts