#!/bin/bash

# Function to activate virtual environment
activate_virtualenv() {
    echo "Activating virtual environment..."
    pipenv shell

    # Additional instructions for the user
    echo "✅ You are all set."
    echo "🔑 Create a Hugging Face API token."
    echo "   You can create one at: https://huggingface.co/join"
    echo "💼 Create a .env file in the current directory."
    echo "   Add your Hugging Face API token to the .env file as HUGGINGFACE_TOKEN=your_token_here"
    echo "🚀 Run your Python application using:"
    echo "   python main.py"
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


