FROM python:latest

WORKDIR /backend

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "run.py" ]