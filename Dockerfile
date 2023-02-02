FROM python:3.11.1-alpine3.17

LABEL maintainer="https://github.com/DarFig"


RUN pip install waitress==2.1.2


ENV APP=appname
ENV MODE="default"

COPY run.sh /run.sh
RUN chmod +x run.sh
WORKDIR /workspace
CMD ["/run.sh"]
