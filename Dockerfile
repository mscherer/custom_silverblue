FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:e3d97e8c9f0e7c0d7f8ed5bc6e9beb1d1401ac0947720f145b199c62a3e4a9c7
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
