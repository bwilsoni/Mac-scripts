#!/bin/bash

# Build for testing purposes drinks motd changer

sudo launchctl unload /Library/LaunchDaemons/com.bryan.motdchanger.plist

sudo cp /Users/bryan/projects/class/motd_changer/com.bryan.motdchanger.plist /Library/LaunchDaemons

sudo cp /Users/bryan/projects/class/motd_changer/drinks.sh /usr/local/bin

sudo launchctl load /Library/LaunchDaemons/com.bryan.motdchanger.plist
