FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:e0778b2f17ccdf089390de81abc7be2b0bca06e916e97b0b7ae768a31140bfac
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
