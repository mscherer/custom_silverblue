FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:21c09c6f40e6f5b82fdb02a59ae40bbe51ea0c257c9247848a501e40932160be
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
