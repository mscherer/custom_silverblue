FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:d71e8fbc382ffa78de1dc392ddd8aff9817096c329471905b0a369993ae1d904
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs && dnf clean all
