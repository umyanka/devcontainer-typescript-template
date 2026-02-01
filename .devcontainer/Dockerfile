FROM mcr.microsoft.com/devcontainers/base:ubuntu

# install aqua
ARG AQUA_VERSION=v2.56.2
RUN curl -fsSL https://github.com/aquaproj/aqua/releases/download/${AQUA_VERSION}/aqua_linux_amd64.tar.gz | tar -zxv -C /usr/local/bin/ aqua \
  && chmod +x /usr/local/bin/aqua

# RUN apt update
# RUN apt install -y ...
# RUN apt clean && rm -rf /var/lib/apt/lists/*

# # nested virtualization
# RUN groupadd --gid 109 kvm && usermod -a -G kvm vscode

USER vscode
WORKDIR /home/vscode

# xdg
ENV XDG_DATA_HOME=/home/vscode/.local/share
RUN mkdir -p ${XDG_DATA_HOME}

# aqua
ENV AQUA_ROOT_DIR=${XDG_DATA_HOME}/aquaproj-aqua
RUN mkdir -p ${AQUA_ROOT_DIR}/pkgs ${AQUA_ROOT_DIR}/internal/pkgs
ENV PATH=${AQUA_ROOT_DIR}/bin:$PATH

# pnpm
ENV PNPM_STORE_PATH=/workspaces/.pnpm-store
ENV PNPM_HOME=${XDG_DATA_HOME}/pnpm
RUN mkdir -p ${PNPM_HOME}/store
ENV PATH=${PNPM_HOME}:$PATH

# # claude code
# RUN mkdir -p ~/.local/share/claude
