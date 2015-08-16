#!/bin/bash
#
# Change VPN server connection point.
#

ovpn_select="$1"

echo "$ovpn_select"
exit 1
# Define ovpn file requested by user.
OVPN_CONF="/ovpn/ovpn_conf/$ovpn_select.ovpn"

# Create new ovpn file used for credentials.
NEW_OVPN_CONFIG="${OVPN_CONF/.ovpn/_new.ovpn}"
SERVER_CONFIG="/etc/openvpn/server.conf"

echo "Using /ovpn/.pia authentication file..."
echo "Setting up $OVPN_CONF config file..."

# Add .pia file to the ovpn file before transferring.
if ! sed '/auth-user-pass/s/$/ \/ovpn\/\.pia/' "$OVPN_CONF" > "$NEW_OVPN_CONFIG"; then
    echo "Failed to set up $NEW_OVPN_CONFIG file."
    exit 1
fi

echo "Changing ownership and permissions on $NEW_OVPN_CONFIG"
chown ddegagne:ddegagne "$NEW_OVPN_CONFIG" && chmod 0770 "$NEW_OVPN_CONFIG"

if [ -e "$SERVER_CONFIG" ]; then
    rm "$SERVER_CONFIG"
fi

# Copy new config file to /etc/openvpn directory.
if ! cp "$NEW_OVPN_CONFIG" "$SERVER_CONFIG"; then
    echo "Failed to removed previous configuration file."
    exit 1
fi

#echo "Add VPN connection to internal network. Used for squid proxy server."
#route add -net 10.0.0.0 netmask 255.255.255.0 gateway 192.168.1.1

echo "Restart openvpn server."
service openvpn restart

echo "You have successfully change VPN settings to $OVPN_CONF"
unset -v NEW_OVPN_CONFIG OVPN_CONF SERVER_CONFIG
