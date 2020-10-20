FROM concourse/buildroot:git

RUN apk --no-cache add coreutils

COPY scripts/ /opt/resource/
RUN chmod +x /opt/resource/*
