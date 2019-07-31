ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libudev-dev \
        libavformat-dev \
        libavcodec-dev \
        libavdevice-dev \
        libavutil-dev \
        libswscale-dev \
        libswresample-dev \
        libavfilter-dev \
    && rm -rf /var/lib/apt/lists/*
