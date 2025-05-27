FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:e83ed9375cf7e08e0c6092ac9bf9317319ccde38dac0fc26bca2160bdf85039c
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
