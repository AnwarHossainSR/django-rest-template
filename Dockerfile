# Use an official Python runtime as a parent image
FROM python:3.10.13-bookworm

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DB_HOSTNAME db
ENV DB_PORT 5432

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any needed packages specified in requirements.txt
RUN apt-get update -y && \
    apt-get install -y netcat-openbsd && \
    apt-get install -y ncat  # Install ncat

# Upgrade pip and install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the entrypoint script into the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Expose the port that the app will run on (if applicable)
EXPOSE 8000

# Set the entry point to the script
ENTRYPOINT ["/app/entrypoint.sh"]

# # CMD to run the Django application
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
