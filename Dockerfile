FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:684b5838227487f49df3f396dd5316fb06fcbf5e0adb5a4461ed92d23880203a
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all
