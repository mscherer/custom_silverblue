FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:754404a03fde76aed121c2f7679b9c9a561c9f867302b4151af2417f18e9c145
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
