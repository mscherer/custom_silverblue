FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:f3dba78fe391178a86a0ae864d1835516024729c6ae86fb683b51e3b079d7e98
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
