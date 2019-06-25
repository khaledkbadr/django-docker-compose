FROM python:3.6
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    postgresql-client

WORKDIR /usr/src/app
ADD config/requirements.txt ./

RUN pip3 install --upgrade pip; \
    pip3 install -r requirements.txt

RUN git clone https://github.com/vishnubob/wait-for-it.git

RUN django-admin startproject myproject .; \
    mv ./myproject ./origproject