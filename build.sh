#!/usr/bin/env bash
set -e

PROJECT_ROOT=$(pwd)

echo "Building Kidux Components..."

echo "Updating Components..."
git submodule update --init --recursive --remote

echo "Compiling Shell..."
cd "${PROJECT_ROOT}/src/ksh"
cargo build --release

# Add future components here

cd "${PROJECT_ROOT}"
echo "Finished Building Kidux Components!"