FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:6a3615ae6855f26cc9e8b152d607978d030d70b629904946cb96e2126df8ab47
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
