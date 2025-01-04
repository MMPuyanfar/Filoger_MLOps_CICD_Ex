FROM python:3.12-slim

WORKDIR /app

RUN pip install --upgrade pip

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN python setup.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
