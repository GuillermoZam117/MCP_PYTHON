FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    curl \
    git \
    build-essential \
    libssl-dev \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    black \
    ruff \
    pylint \
    mypy \
    pytest \
    langchain \
    llama-index \
    openai \
    flask

RUN curl -fsSL https://ollama.com/install.sh | sh
RUN ollama pull qwen:3b

WORKDIR /app
COPY . /app
EXPOSE 5000
CMD ["bash"]
