#!/bin/bash

# override dynamic path with known path
sed -i.bak 's|STANHEADERS_SRC =.*|STANHEADERS_SRC = $$PREFIX/lib/R/library/StanHeaders/include/src|' src/Makevars
# Fix flags for cross-compilation
if [[ ${CONDA_BUILD_CROSS_COMPILATION:-0} == 1 ]]; then
    sed -i.bak "s?\${R_HOME}?${BUILD_PREFIX}/bin?" src/Makevars
    sed -i.bak "s?tail -n 1?tail -n 1 | sed -i 's|${BUILD_PREFIX}|${PREFIX}|'?" src/Makevars
fi

export TBB_LIB=${PREFIX}/lib
export TBB_INC=${PREFIX}/include

export DISABLE_AUTOBREW=1

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
