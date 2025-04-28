#docker
FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt .

COPY . . 

RUN pip install --no-cache-dir -r  requirements.txt

EXPOSE 8300

CMD [ "python" ,"app.py"]
