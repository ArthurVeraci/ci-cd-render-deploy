# Use Python 3.10
FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Copy project
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run Flask
CMD ["python", "app.py"]
