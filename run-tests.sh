#!/usr/bin/env bash

set -e

echo "=== Angular Test Runner ==="

# Nettoyage des anciens rapports
echo "Cleaning previous test reports..."
rm -rf test-results

# Installation des dépendances
echo "Installing dependencies..."
npm ci

# Exécution des tests
echo "Running Angular unit tests..."
npm test

echo "Tests completed successfully."
