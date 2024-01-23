FROM python:3.10

ARG MODULE_NAME
WORKDIR /app

COPY ./${MODULE_NAME} /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --upgrade pip \
    && pip install -r /app/requirements.txt

CMD ["python", "main.py"]

