# Use the official Python 3.11 slim base image
FROM python:3.11-slim

# Add Labels for metaData
LABEL author="Nishant"
LABEL application_environment="development"
LABEL version="1.0"

# Set the working directory to /home/app
WORKDIR /home/app

# Copy the content of the current directory to the working directory
COPY . .

# Install project dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Set the entrypoint to run app.py
CMD ["python3", "app.py"]