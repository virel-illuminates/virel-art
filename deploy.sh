#!/bin/bash
# deploy.sh — sync virel-art repo to /var/www/html
# Run from repo root after committing changes.

set -e

DEST="/var/www/html"

echo "Deploying virel-art to $DEST..."
cp *.html "$DEST/"
echo "Done."
