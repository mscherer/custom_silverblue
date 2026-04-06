FROM quay.io/fedora-ostree-desktops/silverblue:43@sha256:7c9a184ec5da8ac1568c9757053ee7605f17e0010bf648f0dcfa006c0f1db428
#
# empty space for easier rebasing
#
RUN dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere nmap tftp lshw && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/ /run/dnf /run/dnf 
RUN rm -Rf /tmp/nvim.root # temporary
RUN bootc container lint --fatal-warnings 
