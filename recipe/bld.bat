set "CXX_STD= CXX14"
set "CXXFLAGS= -MD -GL -std=c++14"

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
