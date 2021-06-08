FROM alpine:3

RUN apk --no-cache add openssh-client bash curl git jq coreutils

# can't `git pull` unless we set these
RUN git config --global user.email "git@localhost" && \
      git config --global user.name "git"

COPY scripts/ /opt/resource/
RUN chmod +x /opt/resource/*
