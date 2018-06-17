# FROM python base image
FROM python:2-alpine

ENV PYTHONUNBUFFERED 1

# COPY startup script
COPY . /app

WORKDIR /app

RUN apk add --no-cache gawk sed bash grep bc coreutils postgresql-dev gcc python-dev musl-dev
RUN pip install -r requirements.txt

# EXPOSE port 8000 for communication to/from server
EXPOSE 8000

# CMD specifcies the command to execute container starts running.
CMD ["./wait-for-it.sh", "db:5432", "--", "python", "manage.py", "runserver", "0.0.0.0:8000"] 
ENTRYPOINT ["./entrypoint.sh"]
