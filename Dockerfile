FROM quay.io/fedora-ostree-desktops/silverblue:44@sha256:d79a25753b986c40b97c110d26ce138f420e16b3d85243f64086381f6455d90c
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
