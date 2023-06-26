# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
ARG BUILD_FROM
FROM $BUILD_FROM

# Install dependancies
RUN apk add --no-cache openjdk8 unzip patch build-base git libressl-dev jq

# Build and install the ser2sock application
RUN \
  cd /tmp && \
  git clone https://github.com/nutechsoftware/ser2sock.git && \
  cd ser2sock && \
  ./configure && \
  make && \
  cp ser2sock /usr/local/bin/ && \
  cp -R etc/ser2sock /etc/ && \
  cd .. && \
  rm -rf ser2sock

ADD https://updates.clipsal.com/ClipsalSoftwareDownload/mainsite/cis/technical/CGate/cgate-2.11.4_3251.zip /
RUN unzip /cgate-2.11.4_3251.zip

# Copy data for add-on
COPY rootfs /

COPY java.security.patch /
RUN patch /usr/lib/jvm/default-jvm/jre/lib/security/java.security /java.security.patch
