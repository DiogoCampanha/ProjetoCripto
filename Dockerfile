# Use a lightweight Python image
FROM python:3.11-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app files into the container
COPY . .

# Set the default command to run your script
CMD ["python", "cripto.py"]
