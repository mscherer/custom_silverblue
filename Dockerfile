FROM quay.io/fedora-ostree-desktops/silverblue:44@sha256:ca99aa7871322ad8fea0f3e2c3b435222370c0c394e2e4d19fee41b26d173479
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
