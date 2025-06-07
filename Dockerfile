FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:09d9b890eba9df05c9480d3e31b55b2756e220b12b7d4a9a6020d63865913bf7
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs && dnf clean all
