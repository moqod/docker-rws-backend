FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y --no-install-recommends binutils libproj-dev gdal-bin && rm -rf /var/lib/apt/lists/*
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
