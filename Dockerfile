FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:917d7f235ca2744124aaa2f042e800f58c304ac0816c5c1b6e0900c19581e1bf
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
