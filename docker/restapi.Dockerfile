FROM python:3.11-slim

WORKDIR /app

COPY RESTApi/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY RESTApi/ /app/

ENV FLASK_APP=app.py
ENV FLASK_ENV=production

CMD ["sh", "starter.sh"]
