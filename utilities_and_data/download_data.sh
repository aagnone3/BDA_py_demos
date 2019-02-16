#!/usr/bin/env bash
set -euo pipefail

# download all files under the 'data' page
wget -r -np http://www.stat.columbia.edu/~gelman/book/data/

# put these files under a 'data' directory
rm -rf data
mv www.stat.columbia.edu/~gelman/book/data ./data

# clean up
rm -rf www.stat.columbia.edu
find data -name "*index.html*" -delete
