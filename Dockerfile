FROM phusion/baseimage:0.9.19
CMD ["/sbin/my_init"]
RUN apt-get update && apt-get install -y ansible

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
