# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependancies
RUN apk add --no-cache python3 py3-setuptools py3-twisted py3-pip git mosquitto-clients

RUN git clone https://github.com/cburn/txcgate.git /txcgate
RUN pip3 install /txcgate --break-system-packages
RUN git clone https://github.com/cburn/cgate2mqtt.git /cgate2mqtt
RUN pip3 install /cgate2mqtt --break-system-packages

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]