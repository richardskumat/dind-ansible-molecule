FROM qwe1/debdocker
ENV ansible_version=2.9.1
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends python3 libc6-dev python3-pip gcc python3-dev python3-setuptools python3-wheel libssl-dev openssh-client
RUN pip3 install ansible==${ansible_version} molecule docker
# python-vagrant pywinrm
RUN apt-get purge --autoremove -y libc6-dev gcc libssl-dev python3-dev python3-wheel && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /root/.cache