# Using official python runtime base image
FROM python:2.7-alpine

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY app.py /opt/
ENTRYPOINT FLASK_APP-opt/app.py flask run --host-0.0.0.0 --port-8080
