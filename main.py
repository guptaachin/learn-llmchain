import argparse
from dotenv import load_dotenv
from langchain.prompts import PromptTemplate
from langchain_community.llms import HuggingFaceEndpoint
from langchain.chains import LLMChain

# load env from .env file
load_dotenv()

# accept command line arguments
parser = argparse.ArgumentParser()
parser.add_argument("--topic", default="life")
parser.add_argument("--length", default="4")

args = parser.parse_args()

# build llm
repo_id = "mistralai/Mistral-7B-Instruct-v0.2"
llm = HuggingFaceEndpoint(repo_id=repo_id, 
                          temperature=0.01, 
                          max_new_tokens=50)

# build prompt using Initializer
describe_prompt = PromptTemplate(
    template="Describe {topic} in {length} words",
    input_variables=["topic", "length"]
)

# combine llm and prompt into a chain
describe_chain = LLMChain(
    llm=llm,
    prompt=describe_prompt
)

# get answer
answer = describe_chain.invoke({"topic": args.topic, 
                                "length": args.length})

# print answer
print(answer["text"])

