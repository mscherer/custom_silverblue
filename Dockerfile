FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:911c3564f7cd2c2978692a0bec7deec29a2ee430e3118dcd25cb4a17798592c2
#
# empty space for easier rebasing
#
RUN dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere nmap && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
