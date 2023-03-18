#!/usr/bin/with-contenv bashio

export CGATE_HOST=$(bashio::config 'cgate_host')
export MQTT_HOST=$(bashio::config 'mqtt_host' $(bashio::services mqtt "host"))
export MQTT_PORT=$(bashio::config 'mqtt_port' $(bashio::services mqtt "port"))
export MQTT_USER=$(bashio::config 'mqtt_user' $(bashio::services mqtt "username"))
export MQTT_PASS=$(bashio::config 'mqtt_pass' $(bashio::services mqtt "password"))

twistd --python=/cgate2mqtt/cgate2mqtt/cgate2mqtt.tac --nodaemon --prefix=cgate2mqtt
