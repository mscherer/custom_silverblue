FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:69e68bc7402e09ba40bb97d08f3b4bc7a2c626521eedb6bd5f38cd59d66a1f89
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
