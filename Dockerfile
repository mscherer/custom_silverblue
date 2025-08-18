FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:5d3c5c9c65748f7cd5b3626ab76c5be4aa16846a9dfa3a00009a215d39fdc730
#
# empty space for easier rebasing
#
RUN dnf remove -y virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
