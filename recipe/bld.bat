mkdir %HOME%\.R
echo -e "CXX14=g++\r\nCXX14FLAGS=-O2 -Wall\r\nCXX14STD=-std=gnu1y" > %HOME%\.R\Makevars.win
cat %HOME%\.R\Makevars.win
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
