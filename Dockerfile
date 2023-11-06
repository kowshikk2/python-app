FROM arm64v8/python:3

WORKDIR /usr/src/app

COPY app.py .

CMD ["python" ,"./app.py"]
