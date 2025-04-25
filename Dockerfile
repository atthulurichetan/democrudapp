# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 8099 available to the world outside this container
EXPOSE 8099

# Define environment variable
ENV NAME="World"

# Run app.py when the container launches
CMD ["python", "main.py"]


# FROM python:3.9-slim

# WORKDIR /app

# # Install dependencies
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application code and the wait-for-it script
# COPY . .

# # Make sure the wait-for-it script is executable
# RUN chmod +x wait-for-it.sh

# # Set entry point to use wait-for-it and then start flask
# ENTRYPOINT ["./wait-for-it.sh", "db:3306", "--timeout=30", "--strict", "--", "flask", "run", "--host=0.0.0.0"]

