#!/bin/bash

git --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Git is installed. Version: $(git --version)"
else
  echo "Git is not installed."
  exit 1
fi

# Check if git username is set
git config user.name > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Git username is set."
else
  echo "Git username is not set."
  read -p "Enter Git username: " username
  git config --global user.name "$username"
  echo "Git username set successfully."
fi

# Check if git user email is set
git config user.email > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Git email is set."
else
  echo "Git email is not set."
  read -p "Enter Git email: " email
  git config --global user.email "$email"
  echo "Git email set successfully."
fi

# Set execution permissions for scripts 
chmod +x scripts/.

# Check if hooks have been set
hooks_directory="scripts"
hooks_path=$(git config --get core.hooksPath)
if [ -z "$hooks_path" ]; then
    echo "Git core.hooksPath is not set. Setting it to $hooks_directory ..."
    git config core.hooksPath $hooks_directory
    echo "Git core.hooksPath set to $hooks_directory"
else 
    echo "Git hooks are already set on $hooks_path"
fi

# Check if node is installed
node -v > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Node.js is installed. Version: $(node -v)"
  # Define the path to the project
  PROJECT_PATH=$(pwd)

  # Check if the node_modules directory exists
  if [ -d "$PROJECT_PATH/node_modules" ]; then
    echo "Node modules are installed."
  else
    echo "Node modules are not installed. Installing..."
    npm install
    echo "Node modules installed successfully."
  fi
else
  echo "Node.js is not installed. Please download it and re-run the script"
fi
