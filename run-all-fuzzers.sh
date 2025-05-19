#!/bin/sh
rm -rf echidna-tmp
mkdir echidna-tmp
rm -rf foundry-tmp
mkdir foundry-tmp
rm -rf hybrid-echidna-tmp
mkdir hybrid-echidna-tmp
rm -rf ityfuzz-tmp
mkdir ityfuzz-tmp
docker pull ghcr.io/crytic/echidna/echidna:v2.1.1
docker pull ghcr.io/foundry-rs/foundry:nightly-71f9b8e645abc24da099912ce4d4ce481d26ffad@sha256:7c64c44ca2bfe36bf6108eb9f7bf29034b1b39ee95aa3c29b0d29768996c82ec
docker pull ghcr.io/crytic/echidna/echidna:v2.0.4
docker pull fuzzland/ityfuzz:v0.0.1
docker build --rm -t "hybrid-echidna:v0.0.2" -f Dockerfile.optik .
docker build --rm -t daedaluzz-wake -f Dockerfile.wake .
# rm -rf optic-tmp
# git clone https://github.com/crytic/optik.git optic-tmp
# cd optic-tmp
# git checkout v0.0.2
# git apply ../optik-dockerfile.patch
# docker build --rm -t "hybrid-echidna:v0.0.2" -f Dockerfile .
# cd ..
python3 run-campaigns.py --fuzzer-name harvey
python3 run-campaigns.py --fuzzer-name echidna
python3 run-campaigns.py --fuzzer-name foundry
python3 run-campaigns.py --fuzzer-name wake
python3 run-campaigns.py --fuzzer-name hybrid-echidna
python3 run-campaigns.py --fuzzer-name ityfuzz
