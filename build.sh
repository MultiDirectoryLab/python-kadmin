#!/bin/bash
target=$1

#
# build docs http://guide.python-distribute.org/creation.html
#
# python setup.py register
# python setup.py sdist upload
#
# Updating your distribution 
#

if [ "$target" == "test" ]; then 
    CFLAGS="-O0" python3 ./setup.py build --build-platlib ./test/
fi

if [ "$target" == "dist" ]; then 
    python3 ./setup.py sdist
fi

if [ "$target" == "release" ]; then
    CFLAGS="-O3" python3 ./setup.py build
fi
