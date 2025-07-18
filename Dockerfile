FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:79c21b0b6aa1e861fb731e9156f4086b57e2835d7f5eb73accf2d3c350158a35
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
