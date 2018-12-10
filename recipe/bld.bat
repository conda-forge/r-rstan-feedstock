mkdir "%USERPROFILE%\.R"
(
echo CXX14 = g++
echo CXX14STD = -std=c++14
)>"%USERPROFILE%\.R\Makevars.win"
type "%USERPROFILE%\.R\Makevars.win"

g++ --version

"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
