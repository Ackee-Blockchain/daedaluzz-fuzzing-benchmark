#!/bin/bash
cd /daedaluzz

# Clean up and create fresh directory
rm -rf hardhat-tmp/task-$1
mkdir -p hardhat-tmp/task-$1
cd hardhat-tmp/task-$1

# Initialize new Hardhat project
mkdir hardhat-project
cd hardhat-project

# Copy pre-installed dependencies from template
cp /hardhat-template/package.json .
cp /hardhat-template/package-lock.json .
ln -s /hardhat-template/node_modules node_modules

cat > hardhat.config.ts << EOF
import type { HardhatUserConfig } from "hardhat/config";

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
};

export default config;
EOF

# Ensure dirs exist and copy the test into this project
mkdir -p contracts
cp /daedaluzz/generated-mazes/maze-$3.foundry.sol contracts/maze-$3.t.sol
# no forge build compatible

npx hardhat compile


# Hardhat config settings
RUNS=500  # High run count for thorough testing
MAX_TEST_REJECTS=1073741823
DEPTH=100
INIT_SEED=$4
RANDOM=$INIT_SEED
START_TIME=$(date +%s)
TIME_LIMIT=$2
END_TIME=$((START_TIME + TIME_LIMIT))

while true; do
    NOW_TIME=$(date +%s)
    echo "{\"timestamp\": $NOW_TIME}"
    if [ $END_TIME -lt $NOW_TIME ]; then
        break
    fi
    SEED=$RANDOM
    echo "{\"random-seed\": $SEED}"
    HEX_SEED=$(printf "0x%x" $SEED)
    # Create and use an ephemeral config local to hardhat-project
    cat > hardhat.config.ts << EOF
import type { HardhatUserConfig } from "hardhat/config";

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  test: {
    solidity: {
      fuzz: {
        runs: $RUNS,
        seed: '$HEX_SEED',
        maxTestRejects: $MAX_TEST_REJECTS,
        dictionaryWeight: 40,
        includeStorage: true,
        includePushBytes: true
      },
      invariant: {
        runs: $RUNS,
        depth: $DEPTH,
        failOnRevert: false,
        callOverride: false,
        dictionaryWeight: 80
      }
    }
  }
};

export default config;
EOF

    # Run tests using the local config so the parent /daedaluzz/hardhat.config.ts is ignored
    echo "Running Hardhat test"
    npx hardhat test --config ./hardhat.config.ts contracts/maze-$3.t.sol
    RANDOM=$((RANDOM))
done