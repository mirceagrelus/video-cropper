# Use an official Python image
FROM python:3.10-slim

# Install FFmpeg and any other dependencies
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Copy the project files into the container
COPY . /workspace

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Jupyter Notebook port
# EXPOSE 8888

# Default command to start Jupyter Notebook
# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]