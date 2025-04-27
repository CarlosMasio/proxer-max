#!/bin/bash

# Log in to Windscribe if not already logged in
windscribe login

# Loop to change IP every second
while true; do
    # Disconnect from Windscribe VPN
    windscribe disconnect
    sleep 1  # Wait for 1 second before reconnecting
    
    # Connect to Windscribe VPN (you can specify a country or server)
    windscribe connect
    sleep 1  # Wait for 1 second after connecting to change IP

    # Optionally, change the server every time (example: random server)
    # windscribe connect random
done
