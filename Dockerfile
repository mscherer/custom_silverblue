FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:10c6df3c3f8f8cb5d80d3bfa11d86fba775a288cc34ee54a0ea09a61522a22cf
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
