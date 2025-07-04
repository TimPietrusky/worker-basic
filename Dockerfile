FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY handler.py /app/
COPY README.md /app/
COPY test_input.json /app/

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Start the container
CMD ["python", "-u", "handler.py"]