FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:6b84aa8bf0b098423508844f8075c3ec4945b16199886c4d3f4e6cc77d8eef53
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
