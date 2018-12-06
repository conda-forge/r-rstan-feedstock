#!/bin/bash
if [[ $target_platform == win-64 ]]; then
  mkdir -p ~/R
  echo -e "CXX14=vs2015" > ~/R/.makevars
fi
if [[ $target_platform =~ linux.* ]] || [[ $target_platform == win-32 ]] || [[ $target_platform == win-64 ]] || [[ $target_platform == osx-64 ]]; then
  export DISABLE_AUTOBREW=1
  $R CMD INSTALL --build .
else
  mkdir -p $PREFIX/lib/R/library/rstan
  mv * $PREFIX/lib/R/library/rstan
fi
