Alpine with python3 and postgres mysql client databases
---
install python3 mysql and postgres client on alpine linux.

Example
---

Dockerfile django app

```
FROM softlabperu/py3-alpine-db:latest

MAINTAINER softlabperu.com

COPY <path/code> /home/docker/code/

WORKDIR /home/docker/code/

RUN pip install --no-cache-dir -Ur requirements.txt
RUN DATABASE_URL=none python3 manage.py collectstatic --noinput

EXPOSE 8000

ENTRYPOINT ["python", "manage.py", "runserver"]

```

Requirements
---
#### Mysql ####

* `pip3 install mysqlclient`

#### Postgres ####

* `pip3 install psycopg2 psycopg2-binary`
