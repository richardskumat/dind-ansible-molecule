FROM qwe1/debdocker
# https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/
ENV ansible_version=2.9.20
ENV molecule_version=3.2.4
ENV umask=022
#ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends python3 libc6-dev python3-pip gcc git python3-dev python3-setuptools python3-wheel libssl-dev openssh-client
RUN pip3 install --upgrade pip
RUN pip3 install ansible==${ansible_version} molecule==${molecule_version} molecule-docker docker ansible-lint flake8 yamllint
# python-vagrant pywinrm
RUN apt-get purge --autoremove -y libc6-dev gcc libssl-dev python3-dev python3-wheel && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /root/.cache
# note -g 998 might work on a debian host(that's where I run it)
# but might break on RHEL systems
RUN groupadd -g 998 docker
RUN useradd -m -s /bin/bash user && \
    gpasswd -a user docker
USER user
CMD ["bash"]