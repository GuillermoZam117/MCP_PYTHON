#!/bin/bash
docker build -t mcp-dev .
docker run -v $(pwd):/app -it mcp-dev
