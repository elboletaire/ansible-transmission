ARG version

FROM debian:${version}

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential \
    libffi-dev \
    libssl-dev \
    python-dev \
    python-pip \
    git \
    systemd

RUN pip install setuptools && pip install ansible

RUN mkdir -p /etc/ansible && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

ENTRYPOINT ["/bin/systemd"]
