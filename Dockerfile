FROM python:alpine3.7
COPY . /app
WORKDIR /app
RUN apk add --no-cache --update python3-dev  gcc build-base
RUN python3 -m ensurepip
RUN pip3 install --upgrade pip
#RUN pip install wheel

RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./index.py