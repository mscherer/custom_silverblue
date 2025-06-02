FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:9f7e728bfe33256e559ba02f2241620f9ccd0159bcd0df65a7ccbc637cc52a86
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim && dnf clean all
