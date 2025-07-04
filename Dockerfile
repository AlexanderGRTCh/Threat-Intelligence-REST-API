# Use python3.11 slim version
FROM python:3.11-slim 
# Set working dir inside the container
WORKDIR /app 3
# Copy requirments.txt and install packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copy FastAPI app code 
COPY ./app /app

# Run app with uvicorn when container starts
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
