# Use an official lightweight Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy only requirements first (for efficient Docker caching)
COPY ../requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY .. .

# (Optional) Expose ports if you run an API/server
EXPOSE 8000

# (Optional) Run tests at build time (comment out if not needed)
# RUN pytest

# Set default command (can be customized)
CMD ["python", "src/main.py"]
