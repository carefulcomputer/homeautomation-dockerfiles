FROM nodered/node-red:latest

USER root
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      yarn

USER node-red

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
