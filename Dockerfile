FROM ubuntu
LABEL MP157DK1 build container
RUN apt-get update
RUN apt-get -y install git gcc curl vim build-essential
RUN apt-get -y install swig bison flex gcc-arm-linux-gnueabi
RUN apt-get -y install python3 python3-pip python3-distutils
RUN apt-get -y install openssl libssl-dev device-tree-compiler
RUN apt-get -y install cpio lzop
RUN apt-get -y install bc lsb-release lzma man-db gettext pkg-config libmpc-dev u-boot-tools
RUN apt-get -y install libncurses5-dev wget
RUN apt-get -y install file unzip rsync
RUN echo 'export CC=arm-linux-gnueabi-' > ~/.bashrc
WORKDIR /build_volume
VOLUME ["/build_volume", "/rootfs"]