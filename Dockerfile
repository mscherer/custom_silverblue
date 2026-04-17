FROM quay.io/fedora-ostree-desktops/silverblue:43@sha256:cb9e155aa15485653dc04ed3860fd60cbe6de6b69e8bfc7318af87d5e369f095
#
# empty space for easier rebasing
#
RUN <<EORUN
# not needed and take space
dnf remove -y amd-ucode-firmware virtualbox-guest-additions rpcbind nfs-utils hypervvssd hyperv-daemons hypervfcopyd hypervkvpd nvidia-gpu-firmware amd-gpu-firmware 
# see README for details
dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace vim wireguard-tools neovim git-lfs redhat-display-fonts

dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/ /run/dnf /run/dnf 
EORUN
RUN rm -Rf /tmp/nvim.root # temporary
RUN bootc container lint --fatal-warnings 
