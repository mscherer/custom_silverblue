FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:022f25d21353f2177217eaf8ba2455d0dec24f3284c548064d58012d0fd8b7a8
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
