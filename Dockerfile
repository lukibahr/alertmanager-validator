FROM alpine:3.7
LABEL maintainer="Lukas Bahr lukas@devopoly.de"

ARG DRONE_TAG

RUN apk update && apk --no-cache add curl ca-certificates 

RUN wget -qO- https://github.com/prometheus/alertmanager/releases/download/v${DRONE_TAG}/alertmanager-${DRONE_TAG}.linux-amd64.tar.gz \
    | tar xvzf - -C / && mv /alertmanager-${DRONE_TAG}.linux-amd64/amtool /usr/local/bin

USER daemon
WORKDIR /workdir
ADD config  workdir

ENTRYPOINT [ "amtool" ]
CMD [""]
