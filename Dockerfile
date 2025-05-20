FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:3ce3ad421cdac510c40a375a3c43a23685214294eef09b587a66df1b3d464d90
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
