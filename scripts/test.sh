set -e

# Get into a temp directory to run test from the installed scikit learn and
# check if we do not leave artifacts
mkdir -p $TEST_DIR

cd $TEST_DIR

if [[ "$COVERAGE" == "true" ]]; then
    nosetests -s --with-coverage --with-timer --timer-top-n 20 sklstub
else
    nosetests -s --with-timer --timer-top-n 20 sklstub
fi
