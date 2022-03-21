FROM python:3.7.11-slim
ADD . /app
WORKDIR /app

EXPOSE 5000
RUN apt-get update && \ 
  apt-get install -y git && \
  pip3 install --upgrade pip && \
  pip3 install scrapydweb && \
  pip install logparser && \
  apt-get remove -y git
CMD scrapydweb
