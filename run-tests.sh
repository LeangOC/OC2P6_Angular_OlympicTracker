#!/usr/bin/env bash

# Arrêter le script en cas d'erreur
set -e


echo "=== Angular Test Runner ==="

# Nettoyage
echo "Cleaning previous test reports..."
rm -rf test-results

# Installation des dépendances en environnement CI
if [ "$CI" = "true" ]; then
    echo "CI detected: installing dependencies..."
    npm ci
else
    echo "Local execution: using existing node_modules"
fi

# Exécuter les tests unitaires
echo "Running Angular unit tests..."
npm test

# Fin du script
echo "Tests completed successfully."
