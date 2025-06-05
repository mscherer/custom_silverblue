FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:20f035c30ff06e1296023ead623c08659ac517c667aa912892ad963242e69c82
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
