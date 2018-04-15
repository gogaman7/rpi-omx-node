FROM deasil/rpi-omx

RUN apt-get update \
    && apt-get install apt-utils \
    && apt-get install curl -y \
    && apt-get remove nodejs nodejs-legacy -y \
    && apt-get remove npm -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | /bin/bash - \
    && apt-get install nodejs -y \
    && apt-get install make g++ -y \
    && apt-get install mediainfo -y

WORKDIR /app

CMD [ "npm", "start" ]
