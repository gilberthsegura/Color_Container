FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3-pip python3-dev

RUN pip install flask

ENV BGCOLOR="tan"

COPY . /opt/source-code/

ENTRYPOINT FLASK_APP=/opt/source-code/server/app.py flask run --host=0.0.0.0
