FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:028d9614a865bf90e60ba382a467c27f4b90a36717d8154cfd9cf222d18bddad
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
