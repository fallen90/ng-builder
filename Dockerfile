FROM fallen90/node-sass

WORKDIR /usr/src

ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN \
  apk add --no-cache --virtual dumb-init && \
  npm install -g npm@latest && \
  npm cache add @agm/core@1.0.0-beta.5 && \
  npm cache add @angular/animations@8.0.0 && \
  npm cache add @angular/cdk@8.0.0 && \
  npm cache add @angular/common@8.0.0 && \
  npm cache add @angular/compiler@8.0.0 && \
  npm cache add @angular/core@8.0.0 && \
  npm cache add @angular/forms@8.0.0 && \
  npm cache add @angular/platform-browser@8.0.0 && \
  npm cache add @angular/platform-browser-dynamic@8.0.0 && \
  npm cache add @angular/router@8.0.0 && \
  npm cache verify

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
