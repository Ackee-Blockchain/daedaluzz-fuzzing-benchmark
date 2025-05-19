#!/bin/bash

source /venv/bin/activate
cd /daedaluzz
wake up pytypes

# Convert numeric seed to hex string format and ensure even length
SEED_HEX=$(printf "%x" $4)
if [ $((${#SEED_HEX} % 2)) -eq 1 ]; then
    SEED_HEX="0$SEED_HEX"
fi

timeout $2 wake test tests/test_maze$3.py --seed $SEED_HEX
