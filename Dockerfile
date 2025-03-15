FROM ghcr.io/vandercat/lua-home-page:latest
RUN pacman -Sy --noconfirm luarocks
RUN luarocks install luasocket
WORKDIR /opt/luapobeda.rf