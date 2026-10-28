FROM python:3.15.2-alpine3.24

LABEL maintainer="https://github.com/DarFig"


RUN pip install waitress==3.0.0


ENV APP=appname
ENV MODE="default"

COPY run.sh /run.sh
RUN chmod +x run.sh
WORKDIR /workspace
CMD ["/run.sh"]
