#!/bin/bash

# Start Windscribe service
windscribe start

# Trap Ctrl+C (SIGINT) to disconnect Windscribe
trap 'echo "Disconnecting Windscribe..."; windscribe disconnect; exit' INT

# Infinite loop to change IP every 30 seconds
while true; do
    # Disconnect current session if any
    windscribe disconnect

    # Connect to a random location
    windscribe connect

    # Wait for 30 seconds before changing IP again
    sleep 30
done
