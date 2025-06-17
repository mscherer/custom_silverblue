FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:aa52b2e2e468ce834c07a365428b0a97a4a1cdb4d9a354ff5699c451d58eca80
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal htop mosh strace tcpdump vim wireguard-tools neovim git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/repos /var/cache/ldconfig
RUN bootc container lint --fatal-warnings 
