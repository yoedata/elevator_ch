FROM python:3.8

EXPOSE 5000

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app
CMD python app.py