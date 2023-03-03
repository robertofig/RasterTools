@echo off

SET GDALInc="C:\SIG\GDAL-305\include"
SET TinyBaseInc="Z:\TinyBase\src"
SET GeoTypesInc="Z:\GeoTypes\src"
SET GDALLib="C:\SIG\GDAL-305\lib\gdal_i.lib"

SET CompilerIncludes=/I %GDALInc% /I %TinyBaseInc% /I %GeoTypesInc%
SET CompilerFlags=/EHsc /Zi /nologo
SET LinkerFlags=/INCREMENTAL:NO

pushd ..\build
cl ..\src\raster-cut-util.cpp %CompilerIncludes% %CompilerFlags% /link %GDALLib% %LinkerFlags%
cl ..\src\raster-outline-util.cpp %CompilerIncludes% %CompilerFlags% /link %GDALLib% %LinkerFlags%
popd