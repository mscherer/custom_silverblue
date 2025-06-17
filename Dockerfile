FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:b8fcb9783ad2e77ac217fa3f98307ce6f272ac6599e308a2d02249e4de18f151
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all
RUN bootc container lint --fatal-warnings 
