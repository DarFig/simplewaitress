FROM python:3.10.0a2-alpine3.12

LABEL maintainer="https://github.com/DarFig"


RUN pip install waitress==2.0.0


ENV APP=appname
ENV MODE="default"

COPY run.sh /run.sh
RUN chmod +x run.sh
WORKDIR /workspace
CMD ["/run.sh"]
