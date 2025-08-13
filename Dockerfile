FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:c244a456aebcdb7129e2718a13cd268dad1458863a03cff0dbbca690a3ade5be
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
