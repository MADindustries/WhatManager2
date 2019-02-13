FROM python:3.6 as build

ARG pipenv_flags="--three"

WORKDIR /app

COPY ./Pipfile* ./

RUN apt update \
  && apt install -y flac lame sox mktorrent curl

RUN pip install pipenv \
  && pipenv install $pipenv_flags

EXPOSE 8001

CMD ["pipenv", "run", "python", "manage.py", "runserver", "0.0.0.0:8001"]