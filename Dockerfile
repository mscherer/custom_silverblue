FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:d01e291ecad40c73a4ec97b3f0808fe799d6d6aa5c1710a5195dd07842a5907b
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
