#!/bin/bash

set -e

bash ubuntu_sys_pkg.sh
bash rproject.sh
bash lavaan.sh
bash openmx_sys.sh
bash openmx.sh
bash metasem.sh
bash symsem.sh
bash semlbci.sh
bash semmcci.sh
bash longmi.sh
bash mpdemo.sh
bash mplusautomation.sh
bash post.sh
