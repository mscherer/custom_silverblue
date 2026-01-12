FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:36222c6aba2614ce948b3d5cf89d3c3d57c8d0d9ebae0852c0e746ad6a0cc5f1
#
# empty space for easier rebasing
#
RUN dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere nmap tftp && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
