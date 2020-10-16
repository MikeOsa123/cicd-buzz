FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install --upgrade pip -r /src/requirements.txt
COPY run.py /src
COPY buzz /src/buzz
COPY app /src/app
CMD python /src/run.py