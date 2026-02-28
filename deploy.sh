#!/bin/bash
# deploy.sh — sync virel-art repo to /var/www/html
# Run from repo root after committing changes.

set -e

DEST="/var/www/html"

echo "Deploying virel-art to $DEST..."
cp *.html "$DEST/"
# Copy subdirectories (workshop, etc.) — copy contents, not the dir itself
for dir in */; do
  if [ -d "$dir" ]; then
    mkdir -p "$DEST/$dir"
    cp -r "$dir"* "$DEST/$dir"
    echo "Copied $dir"
  fi
done
echo "Done."
