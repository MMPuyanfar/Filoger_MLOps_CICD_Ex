FROM python:3.10-slim

WORKDIR /app

RUN pip install --upgrade pip

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN python setup.py

EXPOSE 5000

ENV FLASK_APP=app.py
ENV FLASK_ENV=production  

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

