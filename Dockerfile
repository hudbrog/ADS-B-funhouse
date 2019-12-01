FROM balenalib/raspberrypi3-debian-python:3.7.4

COPY . /app

WORKDIR /app

RUN pip install python-dateutil requests paho-mqtt

CMD [ "python", "/app/adsbclient.py", "-H", "192.168.0.233", "-m", "mosquitto", "-r", "hudbrog_radar_1" ]
