FROM fedora:22

RUN dnf upgrade -y -q && dnf clean all
RUN dnf install -y -q tar
RUN mkdir -p /nodejs && curl -s https://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz | tar -xzf - -C /nodejs --strip-components=1

ENV PATH=${PATH}:/nodejs/bin
