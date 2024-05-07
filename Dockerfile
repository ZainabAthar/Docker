# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the readme.txt file (if any) and install dependencies
COPY readme.txt .

# Install Flask
RUN pip install -r readme.txt

# Copy the Flask app into the container
COPY . .

# Set the command to run the Flask app
CMD ["python", "app.py"]