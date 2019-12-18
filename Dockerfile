FROM pinkrobin/docker-ansible-alpine:2.8.5-3.10.3-py2.7

MAINTAINER Patrick Pötz <devops@wastebox.biz>

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN pip install netaddr

ENTRYPOINT ["/entrypoint.sh"]