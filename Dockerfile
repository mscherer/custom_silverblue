FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:51b18a40f69a1add254345e1457e07acff74f1a9942e4b005b9d006223f04775
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
