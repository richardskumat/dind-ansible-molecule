FROM docker:stable
ENV ansible_version=2.8.2
RUN apk update && \
    apk upgrade && \
    apk add python3 musl-dev py3-pip gcc python3-dev libffi-dev openssl-dev
RUN pip3 install ansible==${ansible_version} molecule docker-py python-vagrant pywinrm
RUN apk del musl-dev gcc python3-dev libffi-dev openssl-dev && \
    rm -rf /var/cache/apk/*