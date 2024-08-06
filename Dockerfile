FROM python:2.7
ENV PYTHONUNBUFFERED=1

RUN apt-get update && \
  apt-get install -y git python-dev build-essential libpq-dev

WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
RUN pip install debugpy
RUN python -m textblob.download_corpora

COPY web/ .

EXPOSE 5678 8000
