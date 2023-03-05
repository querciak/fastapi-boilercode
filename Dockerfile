# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the app directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV ENVIRONMENT production

# Run the command to start the app
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
