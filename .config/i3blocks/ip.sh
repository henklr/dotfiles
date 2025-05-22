#!/bin/bash

# Get Ethernet IP
eth_ip=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)

# Get Wi-Fi IP
wifi_ip=$(ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)

# Fallback text if not connected
[ -z "$eth_ip" ] && eth_ip="No ETH"
[ -z "$wifi_ip" ] && wifi_ip="No Wi-Fi"

echo "ETH: $eth_ip | Wi-Fi: $wifi_ip"

