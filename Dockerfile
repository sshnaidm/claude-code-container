FROM fedora:42 as installer
RUN dnf install -y curl ca-certificates && dnf clean all
RUN curl -fsSL https://claude.ai/install.sh | bash

FROM fedora:42
RUN dnf install -y ca-certificates && dnf clean all \
  && useradd -m -s /bin/bash claude

COPY --from=installer /root/.local/bin/claude /usr/local/bin/claude
USER claude
WORKDIR /home/claude/app

ENTRYPOINT ["claude"]
