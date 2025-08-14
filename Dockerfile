FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:7058e6db66258534495f0437b5619c4717cb493852328035925ba0168f31b462
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
