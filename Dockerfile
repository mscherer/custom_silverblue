FROM quay.io/fedora-ostree-desktops/silverblue:44@sha256:fac5b1dd12fb12b882d6fea54c38276fcd4baca24c0a303ddac0f13e03bb5d34
#
# empty space for easier rebasing
#
RUN <<EORUN
# not needed and take space
dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware hyperv-daemons-license
# see README for details
dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace vim wireguard-tools neovim git-lfs redhat-display-fonts aerc

dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/ /run/dnf /run/dnf 
EORUN
RUN rm -Rf /tmp/nvim.root # temporary
RUN bootc container lint --fatal-warnings 
