FROM bash

RUN apk add --no-cache curl

ENV URL="https://example.com/"
ENV INTERVAL="2m"

ADD script.sh /opt/script.sh
WORKDIR "/opt/"
VOLUME ["/opt/log"]

CMD ["bash", "/opt/script.sh"]
