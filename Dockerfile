FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:20ee11f3d0b3abc9775268672ccb3fc0cca0d271a08291e77f7164aefd263a7e
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
