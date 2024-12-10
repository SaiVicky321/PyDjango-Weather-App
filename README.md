# Weather Application

## Overview
This is a Python-based Weather Application built using the Django framework. The application provides current weather conditions for a given location by fetching real-time data from the [OpenWeatherMap API](https://openweathermap.org/api). The project is containerized using Docker, making it portable and easy to deploy on various environments, including both local and Virtual Machines.

## Features
- Fetches real-time weather data from OpenWeatherMap API.
- Provides current weather conditions, including temperature, humidity, and weather descriptions.
- Built with Django, a robust Python web framework.
- Dockerized for seamless deployment across environments.
- Tested and deployed on:
  - Local machines
  - Cloud VMs

## Tech Stack
- **Backend**: Django 5.0.7
- **Database**: SQLite3
- **API Integration**: OpenWeatherMap API
- **Containerization**: Docker
- **Cloud Hosting**: AWS EC2

## Requirements
Ensure you have the following installed:
- Python 3.9+
- Docker

### Step 1: Clone the repository
* Clone the repository from the provided GitHub URL.

### Step 2: Dockerization Using DockerFile

```bash
FROM python:3.12.8-slim-bookworm
LABEL MAINTAINER="Sai"
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD [ "python", "MyProject/manage.py", "runserver", "0.0.0.0:8000" ]
```

### Step 3: Build the Docker image
```bash
docker build -t weather-app:latest .
```

### Step 4: Run the Docker container
```bash
docker run -d -p 8000:8000 --name weather-app weather-app:latest
```
Access the application at `http://127.0.0.1:8000/`.

### Step 5: Pushing the Image to DockerHub
```bash
docker tag weather-app:latest saivicky321/pydjango-weather-app:v1

docker push saivicky321/pydjango-weather-app:v1
```

## Step 6: Deployment on AWS EC2

1. Launch an EC2 instance with Docker installed.
2. Image pulled from DockerHub.
3. Tested with below command
```bash
docker pull saivicky321/pydjango-weather-app:v1
docker run -d -p 8000:8000  saivicky321/pydjango-weather-app:v1
```

## Step 7: Final Output
![final_output](https://github.com/user-attachments/assets/e78f1577-65fa-45e8-abbc-5abb085aab6c)


## Conclusion
This Weather Application showcases the seamless integration of Django, Docker, and cloud deployment. It demonstrates a practical approach to building and deploying containerized applications. The use of OpenWeatherMap API ensures accurate and real-time weather data. With its straightforward deployment process, this project is an excellent example of modern web application development and deployment techniques.
