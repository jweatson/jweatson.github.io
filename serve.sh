#!/bin/bash
# This will not work for anything but my personal ssh configuration

# Check if Homebrew version of rsync is installed
# if brew list rsync &>/dev/null; then
#   RSYNC_CMD=$(brew --prefix rsync)/bin/rsync
# else
#   echo "!!! ERROR: BREW RSYNC NOT FOUND !!!"
#   exit 1
# fi

# Build site
if hugo --cleanDestinationDir --minify; then
  # Minify HTML and CSS files
  # if command -v minify &> /dev/null; then
  #   find public -type f \( -name "*.html" -o -name "*.css" \) | parallel --eta minify -q -o {} {}
  # else
  #   echo "MINIFY IS NOT INSTALLED. SKIPPING MINIFICATION."
  # fi

  # Quantify png files
  if command -v pngquant &> /dev/null; then
    find public -type f -name "*.png" | parallel --eta pngquant --force --speed 1 --ext .png
  else
    echo "PNGQUANT IS NOT INSTALLED. SKIPPING PNG QUANTIFICATION."
  fi

  echo "BUILD SUCCESSFUL, PUSHING TO SERVER"
  
  # Push to my VPS if everything is alright
  rsync -azhP --exclude "*.jpg" --exclude "*.JPG" --delete --delete-excluded public/ vps-ovh:~/www/
else 
  # Otherwise, don't
  echo "SOMETHING IS UP"
  exit 1
fi

