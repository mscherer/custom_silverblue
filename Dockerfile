FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:33de1c5669bbc8c5be9d687cbdf163f57115f036dfb616c8702a0deac98269da
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
