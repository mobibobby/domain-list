#!/bin/sh

#DNSMasq Full
#opkg update
#opkg update && cd /tmp/ && opkg download dnsmasq-full
#opkg remove dnsmasq && opkg install dnsmasq-full --cache /tmp/

VNPs
#opkg install wireguard-tools
#opkg install openconnect
#opkg install luci-proto-openconnect
#opkg install sing-box
#opkg install dnscrypt-proxy2

Wireguard Server
#opkg update
#opkg install luci-proto-wireguard qrencode
 
Tools
#opkg install curl
#opkg install bind-dig

USB
#opkg install kmod-usb-storage kmod-usb2 kmod-fs-vfat block-mount

DDNS
#opkg update
#opkg install ddns-scripts
#opkg install ddns-scripts-noip
#opkg install luci-app-ddns 
#opkg install wget ca-certificates
#opkg install curl ca-bundle
#ddns-scripts-noip  wget-ssl  ca-certificates curl ca-bundle 


# List of packages to install
PACKAGES="nano curl wget luci"

# Update package lists
opkg update

# Install each package
for package in $PACKAGES; do
    opkg install $package
done

echo "Package installation complete."
