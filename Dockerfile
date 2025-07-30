FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:2ea8b8b41fe507a70fe961c8e325d63973f85ae93faad5513a6a2dc4ffaabea9
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
