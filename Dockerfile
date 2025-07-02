FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:c3f31bb05a05b336f2c3213a560495d7de477604167108fe8256e7c3272571b8
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
