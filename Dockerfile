FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:5d74b4b22bb0094d352a6771f01dd653b232e23ce09c9086fa36711b1b2cf7ce
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
