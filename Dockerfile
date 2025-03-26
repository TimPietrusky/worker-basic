FROM python:3.10-slim

WORKDIR /
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY rp_handler.py /
COPY README.md /

# Start the container
CMD ["python3", "-u", "rp_handler.py"]