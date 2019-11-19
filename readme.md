# dind-ansible-molecule

[![pipeline status](https://gitlab.com/richardskumat/dind-ansible-molecule/badges/master/pipeline.svg)](https://gitlab.com/richardskumat/dind-ansible-molecule/commits/master)

Based on qwe1/debdocker, because:

- I decided to build this image because I've had some python issues due to upstream
docker:stable being an Alpine image while doing molecule tests
on my Ansible roles.

The image has:

- docker, ansible and molecule installed
- debian:10 container base

I use this image to test molecule converge and test my ansible roles.

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/dind-ansible-molecule

Gitlab pipelines

https://gitlab.com/richardskumat/dind-ansible-molecule/pipelines

Github

https://github.com/richardskumat/dind-ansible-molecule

Travis

https://travis-ci.org/richardskumat/dind-ansible-molecule

Dockerhub

https://hub.docker.com/r/qwe1/dind-ansible-molecule