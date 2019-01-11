FROM python:3.7-stretch

COPY requirements.txt /
RUN pip install -r /requirements.txt

ADD . /app/

RUN chmod +x /app/start_server.sh

WORKDIR /app

EXPOSE 3001
CMD ["bash", "start_server.sh"]
