FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:7f54047c579ef300d16e28478310edadaac9e9239aa7420cfff743fc2ae31243
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
