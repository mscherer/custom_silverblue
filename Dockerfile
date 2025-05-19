FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:2688bddef1ba7949d62e5e23d6066a5ab33ca8ec3f735ba8caa191cf9ecc8c82
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
