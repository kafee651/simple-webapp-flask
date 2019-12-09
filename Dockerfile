# Using official python runtime base image
FROM python:3.6

# Set the application directory
USER 1001
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY app.py /opt/
ENTRYPOINT FLASK_APP-opt/app.py flask run --host-0.0.0.0 --port-8080
