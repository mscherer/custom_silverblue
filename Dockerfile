FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:e44531703c6f1ff960a12cf862952544d962e78132b70c4dac527a0982e8f934
#
# empty space for easier rebasing
#
RUN dnf remove -y virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware && dnf install --setopt=install_weak_deps=false -y patch zstd gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
