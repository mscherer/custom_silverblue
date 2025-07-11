FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:94f1e58d4a2669618a832cc10bea8c7813ce81dbc3aa3f65a6478f2603d1cbab
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
