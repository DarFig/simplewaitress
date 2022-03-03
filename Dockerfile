FROM python:3.10.0a2-alpine3.12

LABEL maintainer="https://github.com/DarFig"

RUN apt-get update && \
    apt-get install -y python3-pip
RUN pip install waitress


ENV APP='appname:create_app'

COPY run.sh /run.sh
RUN chmod +x run.sh
WORKDIR /workspace
CMD ["/run.sh"]
