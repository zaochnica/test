FROM python:3.8

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
RUN chmod +x ./entrypoint.sh
EXPOSE 8000

ENTRYPOINT ["./entrypoint.sh"]