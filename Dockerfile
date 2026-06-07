From python:3.13
COPY
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE SPORT
CMD gunicorn workers=4 --bind 0.0.0.0:SPORT app:app