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

ADD https://download.schneider-electric.com/files?p_Doc_Ref=C-Gate_3_Linux_Package_V3.3.2&p_enDocType=Software+-+Release&p_File_Name=cgate-3.3.2_1855.zip /cgate-3.3.2_1855.zip
RUN unzip /cgate-3.3.2_1855.zip

# Copy data for add-on
COPY rootfs /
