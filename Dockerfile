FROM python:3.9

WORKDIR /app

COPY requirements.txt /app


RUN apt-get update
RUN python -m pip install --upgrade pip
# RUN apt-get install -y python3-venv
# RUN python3 -m venv .env
# RUN . .env/bin/activate
RUN pip install -r requirements.txt

COPY . /app
EXPOSE 5000

CMD ["python", "src/main.py"]
