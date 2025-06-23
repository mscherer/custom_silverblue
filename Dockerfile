FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:1a73c0f5245f89e921fa422b9af37ae73530bd2dff17608f4de55907f2202f89
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
