mkdir -p ~/.R
echo -e "CXX14=\"g++\"\nCXX14FLAGS=\"-O2 -Wall\"\nCXX14STD=-std=gnu1y" > ~/.R/Makevars.win
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
