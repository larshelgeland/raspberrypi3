FROM python:3.10-slim

WORKDIR /app

COPY . .

CMD python app.py

#CMD ["echo", "Ferdig!"]