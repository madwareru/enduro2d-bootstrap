@echo off
set BUILD_DIR=%~dp0%\..\build
mkdir %BUILD_DIR%\Debug\x64 || goto :error
pushd %BUILD_DIR%\Debug\x64 || goto :error
cmake ..\..\.. -A x64 || goto :error
cmake --build . --config Debug || goto :error
popd || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit /b %errorlevel%