# Use Python 3.10
FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Copy project
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose Render default port
EXPOSE 10000

# Run with Gunicorn (production server)
CMD ["gunicorn", "--bind", "0.0.0.0:10000", "app:app"]
