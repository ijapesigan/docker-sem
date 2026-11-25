#!/bin/bash

# OpenMx from its GitHub tag, built with OpenMx's own `make cran-build`
# (remotes::install_github() cannot build it). CRAN's 2.22.11 has the
# continuous-time noise covariance bug (t(A) for A), fixed upstream in
# b592c227 (2026-11-01). Remove this script when CRAN has OpenMx >= 2.23.1.

set -e

OPENMX_TAG="v2.23.1"
OPENMX_SRC="/tmp/OpenMx"
RPROFILE="/tmp/Rprofile-buildtools.R"

# nested make calls fail with a parallel jobserver
unset MAKEFLAGS

git clone --depth 1 --branch "${OPENMX_TAG}" \
    https://github.com/OpenMx/OpenMx.git "${OPENMX_SRC}"
cd "${OPENMX_SRC}"

# pkgbuild's build-tools check fails in the build container; the compilers work
echo 'options(buildtools.check = function(action) TRUE)' > "${RPROFILE}"
R_PROFILE_USER="${RPROFILE}" make cran-build
R CMD INSTALL staging/OpenMx_*.tar.gz

cd /
rm -rf "${OPENMX_SRC}" "${RPROFILE}"
R -q -e "stopifnot(packageVersion('OpenMx') >= '2.23.1')"
