# Base image
FROM python:3.12-slim

# Working directory in the container
WORKDIR /Flask-App

# Copy the current directory contents into the container at /Flask-App
COPY . .

# Install required dependencies
RUN pip install -r requirements.txt

# Expose port 5555 for Flask
EXPOSE 5555

#Run the Flask app
CMD [ "python", "app.py" ]
