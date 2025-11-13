#!/bin/bash
echo "========================================"
echo "  BAS VEEG ARC - PRIVATE SERVER"
echo "  Classmates Only - 13 Players Max"
echo "========================================"
echo ""
echo "Starting dedicated server..."
echo "Server will run on port 26000"
echo ""
echo "Share your IP address with classmates!"
echo ""
echo "Your IP addresses:"
ip addr show | grep "inet " | grep -v "127.0.0.1" | awk '{print "  - " $2}'
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

cd "$(dirname "$0")"
./xonotic-linux64-dedicated +exec server-classmates.cfg
