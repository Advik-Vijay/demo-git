# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

#Copy the requirements file to the container direcory
COPY requirements.txt /app

#Install dependencies for python app
RUN pip install --no-cache-dir -r requirements.txt

# Copy the script into the container
COPY vijay.py /app

#Expose the application using below port
EXPOSE 3400

# Run the python application
CMD ["python", "vijay.py"]

