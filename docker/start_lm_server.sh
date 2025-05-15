#!/bin/bash
# This script launches the main pipeline or an API server inside the Docker container

# Activate environment variables if needed
# source /app/.env

# Example: Run as a script (default)
python src/main.py

# Example: Or, if you use FastAPI for serving models, uncomment this:
# uvicorn src.main:app --host 0.0.0.0 --port 8000
