FROM python:3.10-slim

WORKDIR /
COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt
COPY handler.py /rp_handler.py

COPY README.md /README.md

# Start the container
CMD ["python3", "-u", "rp_handler.py"]