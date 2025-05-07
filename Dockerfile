FROM quay.io/fedora-ostree-desktops/silverblue:41.20250507.0-x86_64 
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
