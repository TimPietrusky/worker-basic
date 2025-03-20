FROM python:3.10-slim

WORKDIR /
COPY requirements.txt /requirements.txt
RUN apt-get update && apt-get install -y python3-pip && rm -rf /var/lib/apt/lists/*
RUN pip install -r requirements.txt
COPY rp_handler.py /

COPY README /

# Start the container
CMD ["python3", "-u", "rp_handler.py"]
