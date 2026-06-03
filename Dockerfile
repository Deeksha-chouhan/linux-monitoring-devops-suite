FROM rockylinux:9

WORKDIR /app

RUN dnf install -y procps-ng && \
    dnf clean all

COPY . .

RUN chmod +x scripts/*.sh

CMD ["bash","scripts/run_all.sh"]
