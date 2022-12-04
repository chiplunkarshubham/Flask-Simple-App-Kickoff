FROM python:alpine3.7
COPY . .
ENV FLASK_APP=hello-world.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "flask","run" ]