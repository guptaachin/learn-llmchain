# Stable first steps towards LLMs

## Description

This repository contains the source code for getting started with LLMs. The project is developed in Python and leverages advanced language models to generate descriptive text based on user-defined topics and word counts.

## Features

- Generate descriptive text on any topic within a specified word count.
- Utilize pre-trained language models from the Hugging Face model hub.
- Accept command-line arguments for topic selection and word count customization.
- Easily customize prompts and language model configurations for specialized use cases.

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

3. Run the `run.sh` script:

   - On Linux:

     ```bash
     ./run.sh
     ```

   - On Windows (using Git Bash or similar):

     ```bash
     bash run.sh
     ```

4. Follow the on-screen instructions to install Pipenv if it's not already installed.

### Usage

1. After running the `run` script, activate the virtual environment:

   ```bash
   pipenv shell
   ```

2. Follow the additional instructions provided after activating the virtual environment.

### Additional Instructions

- Create a Hugging Face API token. You can create one [here](https://huggingface.co/join).
- Create a `.env` file in the current directory. Add your Hugging Face API token to the `.env` file as `HUGGINGFACE_TOKEN=your_token_here`.
- Run your Python application using:

  ```bash
  python main.py --topic life --num 5
  ```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## References

- [Langchain-docs](https://api.python.langchain.com/en/latest/langchain_api_reference.html)
- [Hugging Face](https://huggingface.co/)

