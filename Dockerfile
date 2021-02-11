FROM python:3.7-stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt --upgrade pip
RUN pip install flask


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"] 