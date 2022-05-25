FROM python:3-alpine

WORKDIR /service

COPY . .

RUN pip install -r requirements.txt

CMD [ "python", "/service/main.py" ]