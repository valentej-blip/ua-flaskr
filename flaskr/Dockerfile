# docker build -t local-flaskr .
# docker rm local-flaskr
# docker run --rm -p 8030:8030 local-flaskr

FROM python:3.8.2-alpine3.11

ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

COPY . /app

WORKDIR /app

RUN pip install .

RUN flask init-db

# Unit tests
RUN pip install pytest && pytest

EXPOSE 8030

CMD [ "flask", "run", "--host=0.0.0.0", "-p", "8030" ]



