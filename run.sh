#!/bin/bash

# Function to activate virtual environment
activate_virtualenv() {
    echo "Activating virtual environment..."
    pipenv shell
}

# Check if Pipenv is installed
if command -v pipenv &> /dev/null; then
    echo "Pipenv is already installed."
    echo "🚀 Setting up your environment..."

    # Run pipenv install
    echo "Running 'pipenv install'..."
    pipenv install

    # Activate virtual environment
    activate_virtualenv

else
    # If Pipenv is not installed, provide instructions to install it
    echo "Pipenv is not installed."
    echo "To install Pipenv, run:"
    echo "pip install pipenv"

    # Check if user wants to install Pipenv
    read -p "Do you want to install Pipenv now? (Y/N): " choice
    case "$choice" in 
        [yY] | [yY][eE][sS])
            echo "Installing Pipenv..."
            pip install pipenv
            echo "Pipenv installed successfully."
            echo "🚀 Setting up your environment..."
            
            # Run pipenv install
            echo "Running 'pipenv install'..."
            pipenv install

            # Activate virtual environment
            activate_virtualenv
            ;;
        [nN] | [nN][oO])
            echo "Exiting setup. You can install Pipenv later and run the script again."
            ;;
        *)
            echo "Invalid choice. Exiting setup."
            ;;
    esac
fi


