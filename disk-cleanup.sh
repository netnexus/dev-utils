#!/bin/bash

# Delete old simulators
xcrun simctl delete unavailable

# Delete old app archives
rm -rf ~/Library/Developer/Xcode/Archives

# Delete old logs
cd ~/Library/Logs/CoreSimulator
rm -rf *

# Cleanup DerivedData
rm -rf ~/Library/Developer/Xcode/DerivedData

# TypeScript cache
rm -rf ~/Library/Caches/typescript

# Remove yarn cache
yarn cache clean

# Clear brew cache
/usr/local/bin/brew cleanup -s

# Look into ~/Library/Developer/Xcode/iOS DeviceSupport for old versions

# Find other places with ncdu
