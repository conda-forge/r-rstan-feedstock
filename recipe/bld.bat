echo -e "CXX14 = vs2015\n" >> src/Makevars.win
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
