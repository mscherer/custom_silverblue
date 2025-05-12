FROM quay.io/fedora-ostree-desktops/silverblue:41@sha256:40f5028a48e535cb88dc87bc8c251c4f3bf9cb42405d4f93ad744f9969764544
RUN dnf install -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
