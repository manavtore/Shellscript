#!/bin/bash

# Step 1: Install Homebrew
/bin/bash -c "$(curl -fsSL 
https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Step 2: Check and create .zshrc if it doesn't exist
if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

# Step 3: Add Homebrew to PATH in .zshrc
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

# Step 4: Source .zshrc to make changes available
source ~/.zshrc

# Step 5: Verify Homebrew installation
brew help

