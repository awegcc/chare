- install the Nux Dextop YUM repo
```
sudo rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
sudo rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
```

- install ffmpeg
```
yum install ffmpeg
Loaded plugins: fastestmirror, langpacks
Loading mirror speeds from cached hostfile
 * base: mirrors.163.com
 * epel: mirror.premi.st
 * extras: mirrors.163.com
 * nux-dextop: li.nux.ro
Resolving Dependencies
--> Running transaction check
---> Package ffmpeg.x86_64 0:2.8.15-2.el7.nux will be installed

===============================================================================================================================================================================================
 Package                                   Arch                                Version                                                           Repository                               Size
===============================================================================================================================================================================================
Installing:
 ffmpeg                                    x86_64                              2.8.15-2.el7.nux                                                  nux-dextop                              1.3 M
Installing for dependencies:
 SDL                                       x86_64                              1.2.15-14.el7                                                     base                                    204 k
 fdk-aac                                   x86_64                              0.1.4-1                                                           nux-dextop                              375 k
 ffmpeg-libs                               x86_64                              2.8.15-2.el7.nux                                                  nux-dextop                              5.5 M
 lame-libs                                 x86_64                              3.100-1.el7                                                       epel                                    354 k
 libass                                    x86_64                              0.13.4-6.el7                                                      epel                                     99 k
 libavdevice                               x86_64                              2.8.15-2.el7.nux                                                  nux-dextop                               73 k
 libdc1394                                 x86_64                              2.2.2-3.el7                                                       epel                                    121 k
 libvdpau                                  x86_64                              1.1.1-3.el7                                                       base                                     34 k
 openal-soft                               x86_64                              1.16.0-3.el7                                                      epel                                    282 k
 opencore-amr                              x86_64                              0.1.3-3.el7.nux                                                   nux-dextop                              172 k
 schroedinger                              x86_64                              1.0.11-4.el7                                                      epel                                    291 k
 soxr                                      x86_64                              0.1.2-1.el7                                                       epel                                     77 k
 vo-amrwbenc                               x86_64                              0.1.2-1.el7.nux                                                   nux-dextop                               70 k
 x264-libs                                 x86_64                              0.142-11.20141221git6a301b6.el7.nux                               nux-dextop                              570 k
 x265-libs                                 x86_64                              1.9-1.el7.nux                                                     nux-dextop                              1.5 M
 xvidcore                                  x86_64                              1.3.2-5.el7.nux                                                   nux-dextop                              258 k

Transaction Summary
===============================================================================================================================================================================================
Install  1 Package (+16 Dependent packages)

```


### ffmpeg cuda docker
```
FROM nvidia/cuda:10.1-devel AS devel

WORKDIR /root

RUN apt update && \
    apt upgrade -y && \
    apt install wget yasm pkgconf -y && \
    wget https://github.com/FFmpeg/nv-codec-headers/archive/n9.1.23.0.tar.gz && \
    tar -xzf n9.1.23.0.tar.gz && cd nv-codec-headers-n9.1.23.0 && make install && cd - && \
    wget https://www.ffmpeg.org/releases/ffmpeg-4.2.1.tar.xz && \
    tar -xJf ffmpeg-4.2.1.tar.xz && cd ffmpeg-4.2.1 && \
    PKG_CONFIG_PATH='/usr/local/lib/pkgconfig' ./configure --enable-cuda-nvcc --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64 && \
    make -j 10 && make install && \
    

FROM nvidia/cuda:10.1-base as base

WORKDIR /tmp
VOLUME  /tmp

COPY --from=devel /usr/local/bin/ffmpeg /usr/local/bin/ffprobe /usr/local/bin/

CMD ["bash"]
```

docker run -ti --gpus all --rm --name bs -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=compute,utility,video nvidia/cuda:10.1-runtime bash
