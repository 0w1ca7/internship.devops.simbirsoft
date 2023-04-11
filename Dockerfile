FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip  build-essential
COPY . /app
WORKDIR /app 
RUN pip install -r requirements.txt
CMD ["python3","app.py"]
