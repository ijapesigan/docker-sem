
<!-- README.md is generated from .setup/readme/README.Rmd, which rProject's
docker template writes. Edit .setup/readme/description.md, scripts/cran.txt,
scripts/github.txt, or .setup/scripts/project.R instead. -->

# ijapesigan/sem

<!-- badges: start -->

[![Docker Build and Push SEM \[multi\]
(Daily)](https://github.com/ijapesigan/docker-sem/actions/workflows/docker-build-push-daily-multi-sem.yml/badge.svg)](https://github.com/ijapesigan/docker-sem/actions/workflows/docker-build-push-daily-multi-sem.yml)
[![Docker Build and Push
\[multi\]](https://github.com/ijapesigan/docker-sem/actions/workflows/docker-build-push-multi.yml/badge.svg)](https://github.com/ijapesigan/docker-sem/actions/workflows/docker-build-push-multi.yml)
[![Make
Project](https://github.com/ijapesigan/docker-sem/actions/workflows/make.yml/badge.svg)](https://github.com/ijapesigan/docker-sem/actions/workflows/make.yml)
[![Non-ASCII
Check](https://github.com/ijapesigan/docker-sem/actions/workflows/non-ascii-check.yml/badge.svg)](https://github.com/ijapesigan/docker-sem/actions/workflows/non-ascii-check.yml)
[![Shell
Check](https://github.com/ijapesigan/docker-sem/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/ijapesigan/docker-sem/actions/workflows/shellcheck.yml)
<!-- badges: end -->

## Description

The structural equation modeling image of the daily chain: built on
`ijapesigan/tidymodels`, with lavaan, OpenMx, metaSEM, symSEM, semlbci,
semmcci, longMI, semPlot, MplusAutomation, and the Mplus demo (amd64).
Its daily build starts `ijapesigan/ssm`.

Based on `ijapesigan/tidymodels:latest`; built for linux/amd64 and
linux/arm64. Source: <https://github.com/ijapesigan/docker-sem>.

## Use

Docker (Docker Hub or the GitHub Container Registry):

``` bash
docker run -it ijapesigan/sem
docker run -it ghcr.io/ijapesigan/sem
```

Apptainer:

``` bash
apptainer pull sem.sif docker://ijapesigan/sem
apptainer shell sem.sif
```

## Builds

- Docker Build and Push SEM \[multi\] (Daily)
  (`docker-build-push-daily-multi-sem.yml`): when the base image is
  rebuilt
- Docker Build and Push \[multi\] (`docker-build-push-multi.yml`): after
  Make Project
- Make Project (`make.yml`): on push
- Non-ASCII Check (`non-ascii-check.yml`): after Make Project
- Shell Check (`shellcheck.yml`): after Make Project

The images are pushed to Docker Hub and the GitHub Container Registry as
`ijapesigan/sem:latest`.
