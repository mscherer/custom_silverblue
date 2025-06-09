FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:1d3f86c4f72d687c9c36e51058ae823c68540e441a5274349e1bce99d7370923
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs && dnf clean all
