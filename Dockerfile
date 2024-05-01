FROM python:3.8
MAINTAINER LAYLAandALAA
WORKDIR /src/app
COPY . .
RUN pip install  -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python","app.py"]
