FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV LISTEN_PORT 7000
EXPOSE 7000
COPY ./app /app
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
