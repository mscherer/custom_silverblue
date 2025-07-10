FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:7fa8e97d3ea19df41a58c8978923148f93cc947521f09ae2253ffd7b4772cd66
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
