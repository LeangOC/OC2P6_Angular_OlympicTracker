#!/usr/bin/env bash

set -e

echo "=== Angular Test Runner ==="

echo "Cleaning previous test reports..."
rm -rf test-results

if [ "$CI" = "true" ]; then
    echo "CI detected: installing dependencies..."
    npm ci
else
    echo "Local execution: using existing node_modules"
fi

echo "Running Angular unit tests..."
npm test

echo "Tests completed successfully."
