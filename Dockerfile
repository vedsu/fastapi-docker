# Use official Python image as a base
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy FastAPI app files to the container
COPY app/ /app/

# Copy and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose the port FastAPI runs on
EXPOSE 8000

# Command to run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
