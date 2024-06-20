set -e
set -x
set -u

cd $(dirname $0)  # Switch to scripts directory

rm -rf dredd-example-mutated.cc short-circuit-c++.cc short-circuit-c.c dredd-example-mutant-tracking.cc

# lst:dredd-example-mutated
cp test.cc dredd-example-mutated.cc
$DREDD/dredd dredd-example-mutated.cc --mutation-info-file test.json --no-mutation-opts

# lst:short-circuit-c++
cp short-circuit.cc short-circuit-c++.cc
$DREDD/dredd short-circuit-c++.cc --mutation-info-file test.json --no-mutation-opts

# lst:short-circuit-c
cp short-circuit.cc short-circuit-c.c
$DREDD/dredd short-circuit-c.c --mutation-info-file test.json --no-mutation-opts

# lst:dredd-example-mutant-tracking
cp test.cc dredd-example-mutant-tracking.cc
$DREDD/dredd dredd-example-mutant-tracking.cc --mutation-info-file test.json --no-mutation-opts --only-track-mutant-coverage

rm test.json
