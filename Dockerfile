FROM illallangi/ansible:latest as image

COPY image/* /etc/ansible.d/image/
RUN /usr/local/bin/ansible-runner.sh image

COPY container/* /etc/ansible.d/container/
CMD ["/usr/local/bin/label2restic-entrypoint.sh"]
ENV PATH="${PATH}:/usr/local/bin"