FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:89285f7f91d1db1ee0e4b3ff7f32cdd94cf4eda6977b4f80feec3bd5e4dadbac
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
