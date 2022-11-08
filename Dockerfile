FROM python:3.9
# copy from current location "." to my "/dockerapp"
COPY . /app 
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
# run flask on heroku
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app