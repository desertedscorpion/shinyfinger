FROM taf7lwappqystqp4u7wjsqkdc7dquw/heavytombstone
USER root
RUN dnf update --assumeyes && dnf install --assumeyes emacs* && dnf update --assumeyes && dnf clean all
USER ${LUSER}
VOLUME /var/workspace
WORKDIR /var/workspace
CMD /usr/bin/bash