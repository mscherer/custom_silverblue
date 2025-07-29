FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:46170d90286ed1faeebeb3b6ca1432f93d906536571420170dc4fa45e6f9b5b6
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
