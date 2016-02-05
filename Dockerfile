FROM ubuntu:14.04
MAINTAINER xcv58 <i@xcv58.com>
ENV USER xcv58
ENV HOME /home/${USER}
RUN adduser --disabled-password --gecos '' --shell /usr/bin/zsh --home ${HOME} ${USER}; \
        adduser ${USER} sudo; \
        echo "${USER} ALL=NOPASSWD: ALL" >> /etc/sudoers
USER ${USER}
COPY setup.sh /tmp/setup.sh
RUN /bin/bash /tmp/setup.sh
WORKDIR ${HOME}
ENTRYPOINT zsh
