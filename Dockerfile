FROM python:3.9

WORKDIR /app

COPY requirements.txt /app


RUN apt-get update
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /app
EXPOSE 5000

CMD ["python", "src/main.py"]
