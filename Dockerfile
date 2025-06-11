FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:d799f2adc953aca1918ad12fbf1eefb2ea3618396a7874ddff99d9c25a330375
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs && dnf clean all
