FROM concourse/buildroot:git

COPY scripts/ /opt/resource/
RUN chmod +x /opt/resource/*

# DEVOPS-596 - removes AddTrust certificates from /etc/ssl/certs as they have expired and
# directly impact our gitlab server.
RUN rm -f /etc/ssl/certs/AddTrust_*
