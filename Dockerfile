FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:8a1e516f1c5a05d6e4b1d86d5eefbd6f128f87eb596520892d9f43fc1a2094c8
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
