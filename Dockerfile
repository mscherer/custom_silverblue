FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:6478689e8b615dfaf51132f87608f7da2567c44c6cf5b456cfad2c12d498a898
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
