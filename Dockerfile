FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:ddee364264f5c9f1eecfc7991049d4dd298cb5df9e9fb03d149a0c48a026dc40
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
