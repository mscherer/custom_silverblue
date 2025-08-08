FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:283ebd0c314e0f17b5ef626680757958843b3f358677087dc8f68184a27dc5a1
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
