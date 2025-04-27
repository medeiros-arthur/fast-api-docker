# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set environment variables
ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Create a virtual environment
RUN python -m venv $VIRTUAL_ENV

# Set working directory inside the container
WORKDIR /app

# Copy only requirements first (for cache efficiency)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your FastAPI app code
COPY . .

# Expose the FastAPI default port
EXPOSE 8000

# Run the FastAPI app using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
