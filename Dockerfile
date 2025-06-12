FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:1d9b46ff7460aae6b81503c31f73c04a4b0a4235303b4c651e55cc305051d0c2
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs && dnf clean all
