#!/bin/bash
# reconScout - experimental beginner nmap stealth SYN scan

#⚠️ Disclaimer:
# This script is intended for educational purposes and authorized testing only.
# DO NOT use this tool to scan systems or networks without explicit permission.
# Unauthorized scanning may be illegal and is a violation of hacking principles.


# Make sure to sudo apt-get nmap
# Checks for IP or domain to ensure that the script doesn't run without a target

if [ -z "$1" ]; then
  echo "Usage: $0 <IP or domain>"
  exit 1
fi

target=$1

echo "Running SYN scan on $1..."

sudo nmap -sS "$1"

# Added stealth, optional verbose mode
# This can be an executable
