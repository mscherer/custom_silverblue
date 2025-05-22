FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:a741e2e59f5488ae700a96d6c0780bffb68c1e5f8a668f7bda8b62976c2ef828
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
