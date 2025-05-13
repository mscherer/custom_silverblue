FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:962a895fc90848e86a129fe94961aa747db6a8f220741f5b8f579893c2278f4b
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
