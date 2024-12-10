FROM python:3.12.8-slim-bookworm

LABEL MAINTAINER="Sai"

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "python", "MyProject/manage.py", "runserver", "0.0.0.0:8000" ]