FROM docker:stable
RUN apk update && \
    apk upgrade && \
    apk add python3 musl-dev py3-pip gcc python3-dev libffi-dev openssl-dev
RUN pip3 install ansible molecule docker-py python-vagrant pywinrm
RUN apk del musl-dev gcc python3-dev libffi-dev openssl-dev && \
    rm -rf /var/cache/apk/*