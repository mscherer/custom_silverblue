FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:91741062e9d33cf25f62c6fdfcb09283f463c15a7e66eb7573dbe7f8e19e12c1
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
