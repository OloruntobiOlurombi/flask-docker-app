# Use an official Python runtime as a base 
FROM python:3.13.0rc2-slim 

# Set the working directory in the container 
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies 
RUN pip install --no-cache-dir -r requirements.txt 

# Install testing tools like pytest and requests
RUN pip install pytest requests

# Make port 5000 available to the world outside this container 
EXPOSE 5000

# Define environment variable to prevent Python from buffering stdout/stderr 
ENV PYTHONUNBUFFERED=1 

# Run the application 
CMD ["python", "app.py"]


