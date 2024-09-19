# Start with the FastAPI base image
FROM tiangolo/uvicorn-gunicorn:python3.11
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir firebase-admin pydantic
EXPOSE 8001
#COPY .env /app
# Set environment variables from .env file
ENV ENV_FILE_LOCATION=/app/.env
