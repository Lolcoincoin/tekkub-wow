ECHO off

IF NOT EXIST Dongle.lua GOTO utils
FOR /D %%j in (*) do IF EXIST %%j\Dongle.lua copy /Y Dongle.lua %%j

:utils
IF NOT EXIST DongleUtils.lua GOTO legos
FOR /D %%j in (*) do IF EXIST %%j\DongleUtils.lua copy /Y DongleUtils.lua %%j

:legos
IF NOT EXIST LegoBlock.lua GOTO theend
FOR /D %%j in (*) do IF EXIST %%j\LegoBlock.lua copy /Y LegoBlock.lua %%j

:theend
DEL Dongle.lua
DEL DongleUtils.lua
DEL LegoBlock.lua 
