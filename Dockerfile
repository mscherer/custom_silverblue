FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:7a2d96a12f0b3f50508662e6caa2863615ddaad9942ca3217e34cda35633b1d4
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
