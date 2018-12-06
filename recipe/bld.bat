mkdir -p ~/R
echo -e "CXX14 = vs2015\n" > ~/R/Makevars
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
