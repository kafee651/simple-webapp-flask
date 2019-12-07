# Using official python runtime base image
FROM python:3.6

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY app.py /opt/
