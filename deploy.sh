#!/bin/bash
# deploy.sh — sync virel-art repo to /var/www/html
# Run from repo root after committing changes.

set -e

DEST="/var/www/html"

echo "Deploying virel-art to $DEST..."
cp *.html "$DEST/"
# Copy subdirectories (workshop, etc.)
for dir in */; do
  if [ -d "$dir" ]; then
    cp -r "$dir" "$DEST/$dir"
    echo "Copied $dir"
  fi
done
echo "Done."
