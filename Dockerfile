FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:698023f91b34af1974e22911be135c163b5757a838162f10d1f0a7e8e9abac5a
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
