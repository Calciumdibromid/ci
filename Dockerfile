FROM ubuntu:20.04

LABEL Author 6543@obermui.de

RUN apt-get update
RUN apt install tzdata -y --quiet
RUN apt install keyboard-configuration -y --quiet
RUN apt-get install -y --quiet webkit2gtk-4.0 libwebkit2gtk-4.0-dev build-essential curl wget libssl-dev wkhtmltopdf xfonts-base xfonts-75dpi

# install wkhtmltopdf lib + header
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb -O /tmp/wkhtmltox_amd64.deb
RUN dpkg -i /tmp/wkhtmltox_amd64.deb
RUN rm /tmp/wkhtmltox_amd64.deb

# install rust latest stable
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile complete -t stable