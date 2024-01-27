# FROM alpine:latest

# RUN apk add \
# 	libcamera-raspberrypi \
# 	libcamera-tools

# RUN echo "cam -l" >> /root/.ash_history

# WORKDIR /
# COPY entrypoint.sh .

# ENTRYPOINT ["/entrypoint.sh"]

FROM debian:latest

COPY raspi.list /etc/apt/sources.list.d/raspi.list
COPY trusted.gpg /etc/apt/trusted.gpg.d/raspi.gpg

RUN apt update
RUN apt install -y \
	libcamera-tools \
	libcamera-apps-lite

WORKDIR /
COPY entrypoint.sh .

# ENV UDEV=on

RUN echo "libcamera-hello" >> /root/.bash_history

# ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/entrypoint.sh"]