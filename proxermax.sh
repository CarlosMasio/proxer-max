#!/bin/bash

# Start Windscribe service
windscribe start

# Trap Ctrl+C (SIGINT) to disconnect Windscribe
trap 'echo "Disconnecting Windscribe..."; windscribe disconnect; exit' INT

# Clear the terminal
clear

# Print ASCII banner for PROXER-MAX
echo -e "\e[1;34m"
echo " _______  _______  _______           _______  _______         _______  _______          "
echo "(  ____ )(  ____ )(  ___  )|\     /|(  ____ \(  ____ )       (       )(  ___  )|\     /|"
echo "| (    )|| (    )|| (   ) |( \   / )| (    \/| (    )|       | () () || (   ) |( \   / )"
echo "| (____)|| (____)|| |   | | \ (_) / | (__    | (____)| _____ | || || || (___) | \ (_) / "
echo "|  _____)|     __)| |   | |  ) _ (  |  __)   |     __)(_____)| |(_)| ||  ___  |  ) _ (  "
echo "| (      | (\ (   | |   | | / ( ) \ | (      | (\ (          | |   | || (   ) | / ( ) \ "
echo "| )      | ) \ \__| (___) |( /   \ )| (____/\| ) \ \__       | )   ( || )   ( |( /   \ )"
echo "|/       |/   \__/(_______)|/     \|(_______/|/   \__/       |/     \||/     \||/     \|"
echo -e "\e[0m"

# Author and GitHub info
echo -e "             Created by \e[1m@ig.masio\e[0m"
echo -e "  GitHub: \e[4mhttps://github.com/CarlosMasio/proxer-max.git\e[0m"
echo

# Start IP rotation every 30 seconds
while true; do
    windscribe disconnect
    windscribe connect
    sleep 30
done
