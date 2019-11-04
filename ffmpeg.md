### ffmpeg cuda docker
```
FROM nvidia/cuda:10.0-devel-centos7 AS devel

WORKDIR /root

RUN yum install epel-release -y && yum install wget make yasm -y && \
    wget https://github.com/FFmpeg/nv-codec-headers/archive/n9.0.18.2.tar.gz && \
    tar -xzf n9.0.18.2.tar.gz && cd nv-codec-headers-n9.0.18.2 && make install && cd - && \
    wget https://www.ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz && \
    tar -xJf ffmpeg-4.2.1.tar.xz && cd ffmpeg-4.2.1 && \
    PKG_CONFIG_PATH='/usr/local/lib/pkgconfig' ./configure --enable-cuda-nvcc --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64 && \
    make -j 20 && make install && \
    

FROM nvidia/cuda:10.0-runtime-centos7

RUN yum update -y && yun clean all

WORKDIR /tmp
VOLUME  /tmp
ENV  NVIDIA_VISIBLE_DEVICES=all NVIDIA_DRIVER_CAPABILITIES=compute,utility,video

COPY --from=devel /usr/local/bin/ffmpeg /usr/local/bin/ffprobe /usr/local/bin/

CMD ["ffmpeg"]
```

docker run -ti --gpus all --rm --name bs -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=compute,utility,video nvidia/cuda:10.1-runtime bash
