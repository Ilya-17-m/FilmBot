FROM python:3.12

WORKDIR /app

RUN pip install --upgrade pip \
    poetry==2.2.1

COPY pyproject.toml poetry.lock ./

RUN poetry install

COPY . .

CMD ["python3", "main.py"]