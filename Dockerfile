FROM qwe1/debdocker
ENV ansible_version=2.8.3
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends python3 libc6-dev python3-pip gcc python3-dev libssl-dev openssh-client
RUN pip3 install ansible==${ansible_version} molecule
# docker-py python-vagrant pywinrm
RUN apt-get purge --autoremove -y libc6-dev python3-pip gcc python3-dev libssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*