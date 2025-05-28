FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:d93d19994150345c11c305cae39ee76eabc67b500cc1d3edfdacea3c35639e71
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
