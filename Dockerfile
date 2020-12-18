FROM python:3.7

RUN apt-get update &&\
    apt-get install -y binutils libproj-dev gdal-bin
    
# environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV app_port 8000

COPY . /srv/app
WORKDIR /srv/app
RUN pip install -r requirements.txt

EXPOSE ${app_port}

CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "app.wsgi:application"]