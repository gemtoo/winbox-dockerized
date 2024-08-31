FROM debian:bookworm

RUN apt update && apt upgrade -y
RUN dpkg --add-architecture i386 && apt update
RUN apt install -y wine wine32 wine64 libwine libwine:i386 fonts-wine x11-apps xorg git

RUN groupadd user && useradd user -g user -m
RUN chown -Rv user:user /home/user
USER user
WORKDIR /home/user
COPY winbox64.exe /home/user

ENTRYPOINT wine winbox64.exe
