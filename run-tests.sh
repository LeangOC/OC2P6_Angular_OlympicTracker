#!/usr/bin/env bash

set -e

echo "=== Angular Test Runner ==="

# Nettoyage des anciens rapports
echo "Cleaning previous test reports..."
rm -rf test-results

# Vérification des dépendances
if [ ! -d "node_modules" ]; then
    echo "Error: node_modules directory not found."
    echo "Please run: npm ci"
    exit 1
fi

echo "Running Angular unit tests..."
npm test

echo "Tests completed successfully."
exit 0
