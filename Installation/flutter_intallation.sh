#!/bin/bash

# Step 1: Change directory to Documents
cd ~/Documents

# Step 2: Check if FlutterDev directory exists, if not, create it
if [ ! -d "FlutterDev" ]; then
    mkdir FlutterDev
fi
cd FlutterDev

# Step 3: Check if SDK directory exists, if not, create it
if [ ! -d "SDK" ]; then
    mkdir SDK
fi
cd SDK

# Step 4: Unzip Flutter if not already done
if [ ! -d "flutter_macos_arm64_3.13.2-stable" ]; then
    unzip /Users/manav/Downloads/flutter_macos_arm64_3.13.2-stable.zip
fi

# Step 5: Display the current shell
echo $SHELL

# Step 6: Check if the Flutter path is in .zshrc, and add it if not
FLUTTER_PATH="/Users/manavtore/Documents/FlutterDev/SDK/flutter/bin"
if ! grep -qF "$FLUTTER_PATH" ~/.zshrc; then
    echo 'export PATH="$PATH:'"$FLUTTER_PATH"'"' >> ~/.zshrc
    echo "Added Flutter path to ~/.zshrc"
fi

# Step 7: Source .zshrc to apply changes
source ~/.zshrc

# Step 8: Check for Flutter
which flutter
