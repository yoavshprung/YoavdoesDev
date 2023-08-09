
# Use the official Python base image with Python 3.10.12
FROM python:3.10.12

# Set the working directory inside the container
WORKDIR /home/yoav/YoavDevProject/

# Copy all the files from your local directory to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Define the port number the container should expose
EXPOSE 5000

# Run the command
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
