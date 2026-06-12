FROM quay.io/fedora-ostree-desktops/silverblue:43@sha256:fc21eb1df4b579b329ef23502e926be74246a9ec12089ac657be4644f174caae
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
