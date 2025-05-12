FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:c99d297ae6abee2bb0ea453774106ebd54745c4b9303bd5e27866cbd168ac1ca
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
