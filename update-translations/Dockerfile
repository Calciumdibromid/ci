FROM node:14-buster

LABEL Author 6543@obermui.de

# install java
RUN apt-get update && apt-get install -y --quiet openjdk-11-jre

# install crowdin cli tool
RUN wget -qO - https://artifacts.crowdin.com/repo/GPG-KEY-crowdin | apt-key add - && echo "deb https://artifacts.crowdin.com/repo/deb/ /" > /etc/apt/sources.list.d/crowdin.list
RUN apt-get update && apt-get install -y --quiet crowdin3

CMD bash