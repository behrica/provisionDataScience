FROM ubuntu:xenial
RUN apt-get -y update && \
apt-get install -y python-dev python-httplib2 python-keyczar python-setuptools python-pkg-resources git python-pip build-essential libssl-dev libffi-dev gdebi-core openjdk-7-jdk && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip install --upgrade pip
RUN pip install ansible
RUN ansible-galaxy install tersmitten.r ANXS.clojure nicholsn.miniconda kosssi.gitconfig  tersmitten.rstudio
COPY . /root/
RUN ansible-playbook -i /root/hosts /root/local.yml -c local

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
