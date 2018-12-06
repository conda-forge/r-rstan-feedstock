mkdir %HOME%\.R
(echo CXX14=g++
CXX14FLAGS=-O2 -Wall
CXX14STD=-std=gnu1y) > %HOME%\.R\Makevars.win
cat %HOME%\.R\Makevars.win
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
