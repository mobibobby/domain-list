#!/bin/sh

# List of packages to install
PACKAGES="nano curl wget luci"

# Update package lists
opkg update

# Install each package
for package in $PACKAGES; do
    opkg install $package
done

echo "Package installation complete."
