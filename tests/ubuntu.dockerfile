ARG version

FROM ubuntu:${version}

RUN apt update -y && \
    apt install -y --no-install-recommends \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-pip \
    python-pkg-resources \
    git \
    systemd

RUN pip2 install setuptools && \
    pip2 install ansible

RUN mkdir -p /etc/ansible && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

ENTRYPOINT ["/bin/systemd"]
