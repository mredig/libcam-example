# FROM alpine:latest

# RUN apk add \
# 	libcamera-raspberrypi \
# 	libcamera-tools

# RUN echo "cam -l" >> /root/.ash_history

# ENTRYPOINT ["/bin/sh"]

FROM balenalib/raspberrypi4-64-debian:latest

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