FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:e5900a0620cd42f5f30a645212115568779174e7dc742b99b62a29e35f91f43a
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
