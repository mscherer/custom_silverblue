FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:8831d2095c8c8c70f7b959109d30927ec77027ed031db0f70ae77b304cc942a4
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
