FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:d2d0f8acd4bad3104f6a56bb0176478191e5280b4303897aa3307abffe061ce7
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
