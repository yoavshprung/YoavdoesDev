# Use the official Python image as the base
FROM python:3.10.12-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask application files into the container
COPY app.py /app/
COPY index.html /app/

# Install Flask (you can add more dependencies here)
RUN pip install Flask

# Expose port 5000 for the Flask app
EXPOSE 5000

# Set environment variables if needed
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask app when the container starts
CMD ["flask", "run"]
