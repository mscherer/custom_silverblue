FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:b99cd89a613fd040a2c6e7a4d3a42ec4599e61cbb1ab1d518d8a3a1c14ae01d7
#
# empty space for easier rebasing
#
RUN dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere nmap tftp && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
