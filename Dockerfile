FROM python:stretch

WORKDIR /app
COPY . /app


RUN pip install --upgrade pip
RUN pip install flask
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]

