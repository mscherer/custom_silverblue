FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:8338d37e56c4a8220221c3e3523069beac4c1301b6af3ef9c86f9ef2be0900dd
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
