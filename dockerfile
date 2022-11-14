FROM alpine:latest
RUN apk update
RUN apk add py-pip
RUN apk add --no-cache python3-dev 
RUN pip install --upgrade pip
WORKDIR /app
COPY . /app
ENV PORT_TP="5000"
RUN pip install flask
RUN pip install -r requirements.txt
CMD ["python3", "app.py"]