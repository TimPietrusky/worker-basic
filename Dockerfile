FROM python:3.10-slim

WORKDIR /
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
COPY handler.py /

COPY README.md /

# Start the container
CMD ["python3", "-u", "handler.py"]