@echo off

for /F %%d in ('dir /A:D /B') do for %%f in (camera-settings.txt chat-cache.txt layout-cache.txt) do copy /Y %%f %%d
del camera-settings.txt chat-cache.txt layout-cache.txt