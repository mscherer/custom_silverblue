FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:44b6fcf01b94630e908572a6e9f21d3d51c41b78ebd4785590fbc325340dd5af
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
