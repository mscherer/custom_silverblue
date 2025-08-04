FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:42f5410764de2045db3f12ed8f81ab330c3938c9eb5baf451ce00c5e937a4cfd
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
