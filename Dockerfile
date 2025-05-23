FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:4af3d5467202023fdf78aed1fbf5485acad6150fb1d360b80e0a00fbaef924ba
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
