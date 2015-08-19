#!/bin/bash

#generate dumps and check all addons on them

set -e #  abort on any error
ROOT=`git rev-parse --show-toplevel` #repo root; .../cppcheck
./cppcheck . --dump -j 4
set +e 
for ADDON in `find addons | grep "\.py$"` ; do # addons/cert.py
	if [[ $ADDON == "addons/cppcheckdata.py" ]];  then # don't run this
		continue;
	fi
	echo "   ${ADDON}"
	for FILE in `find . | grep "\.dump$"` ; do
		echo python ${ROOT}/${ADDON} ${FILE}
		python ${ROOT}/${ADDON} ${FILE} | grep -v "Checking .*" 
	done
done  |& tee /tmp/cppcheck_travis_addons.log


if `grep -q "Traceback (most recent call last):" /tmp/cppcheck_travis_addons.log` ; then
	exit 99
else
	exit 0
fi
