FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:cd498036d764608432b5ac8bcdf39903961ec4fe56516cb22527a208a3b6181e
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
