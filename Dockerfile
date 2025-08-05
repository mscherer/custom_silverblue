FROM quay.io/fedora-ostree-desktops/silverblue:42@sha256:b12ba9846e2d7b469448a7bc99421f3294c80d461decd5597906e43c9b3365b9
#
# empty space for easier rebasing
#
RUN dnf install --setopt=install_weak_deps=false -y gnome-terminal socat htop mosh strace tcpdump vim wireguard-tools neovim helix git-lfs redhat-display-fonts mozilla-https-everywhere && dnf clean all && rm -Rf /var/log/dnf5.log /var/lib/dnf/ /var/cache/
RUN bootc container lint --fatal-warnings 
