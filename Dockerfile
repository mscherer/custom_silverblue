FROM quay.io/fedora-ostree-desktops/silverblue:43@sha256:477229734ad4000f3b61d212222074c38f330f62e5b549b0c021b69c73927ae6
#
# empty space for easier rebasing
#
RUN dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere nmap tftp lshw && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
