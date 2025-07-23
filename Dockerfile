FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:c031a82e921d690f3911339d02de316c27c00a8b97fbe33fd1b3c5d9a86c1d6a
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
