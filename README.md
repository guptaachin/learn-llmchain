# Stable first steps for LLMs
> 

## Description

Briefly describe your project here.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Python (version 3.12)
- Pipenv

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/guptaachin/learn-llmchain.git
   ```

2. Navigate to the project directory:

   ```bash
   cd learn-llmchain
   ```

3. Run the setup script:

   - On Linux:

     ```bash
     ./setup.sh
     ```

   - On Windows (using Git Bash or similar):

     ```bash
     bash setup.sh
     ```

4. Follow the on-screen instructions to install Pipenv if it's not already installed.

### Usage

1. After running the setup script, activate the virtual environment:

   ```bash
   pipenv shell
   ```

2. Follow the additional instructions provided after activating the virtual environment.

### Additional Instructions

- Create a Hugging Face API token. You can create one [here](https://huggingface.co/join).
- Create a `.env` file in the current directory. Add your Hugging Face API token to the `.env` file as `HUGGINGFACE_TOKEN=your_token_here`.
- Run your Python application using:

  ```bash
  python main.py
  ```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## References

- (Langchain-docs)[https://api.python.langchain.com/en/latest/langchain_api_reference.html]
- (https://huggingface.co/)[HuggingFace]

