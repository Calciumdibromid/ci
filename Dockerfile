FROM ubuntu:20.04

LABEL Author 6543@obermui.de

RUN apt update
RUN apt install tzdata -y --quiet
RUN apt install keyboard-configuration -y --quiet

# install build dependencys
RUN apt install -y --quiet libwebkit2gtk-4.0-dev build-essential curl wget libssl-dev wkhtmltopdf xfonts-base xfonts-75dpi

# install wkhtmltopdf lib + header
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb -O /tmp/wkhtmltox_amd64.deb
RUN dpkg -i /tmp/wkhtmltox_amd64.deb
RUN rm /tmp/wkhtmltox_amd64.deb

# install node14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt update && apt install -y yarn nodejs

# install rust toolchain
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal --component clippy rustfmt
ENV PATH="/root/.cargo/bin:${PATH}"

