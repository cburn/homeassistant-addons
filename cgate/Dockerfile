# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependancies
RUN apk add --no-cache openjdk8 unzip patch

ADD https://updates.clipsal.com/ClipsalSoftwareDownload/mainsite/cis/technical/CGate/cgate-2.11.4_3251.zip /
RUN unzip /cgate-2.11.4_3251.zip

# Copy data for add-on
COPY rootfs /

COPY java.security.patch /
#RUN patch /usr/lib/jvm/default-jvm/jre/lib/security/java.security /java.security.patch
