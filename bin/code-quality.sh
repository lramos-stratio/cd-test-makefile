#!/bin/bash -ex

echo "Mock code-quality (Sonar)"

VER=$1
echo "Modifying Schema versions in clean to: $VER"

BASEDIR=`dirname $0`/..

cd $BASEDIR

PATH=$(pwd)/dist:$PATH

# Generate combined xml
/usr/local/bin/coverage combine coverage.ut coverage.it
/usr/local/bin/coverage xml -o target/coverage-reports/overall-coverage.xml
mv .coverage coverage.overall

# Generate pylint report
env/bin/pylint cd-test-makefile -r n --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" > pylint-report.txt || exit 0