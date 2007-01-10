ECHO off

IF NOT EXIST Dongle.lua GOTO utils
FOR /D %%j in (*) do IF EXIST %%j\Dongle.lua copy /Y Dongle.lua %%j

:utils
IF NOT EXIST DongleUtils.lua GOTO theend
FOR /D %%j in (*) do IF EXIST %%j\DongleUtils.lua copy /Y DongleUtils.lua %%j


:theend
pause
