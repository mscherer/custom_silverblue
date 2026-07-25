A custom build of Silverblue, using github actions

# Changes
## Packages added
- htop: I prefer it to regular top
- vim && neovim: I use vim, traditionnaly, and I want to test neovim
- mosh: I use that to be connected to my server
- wireguard: used for a VPN on my laptop
- strace & tcpdump: needed to debug various failures
- gnome-terminal: I do not like the new terminal from silverblue
- redhat-display-fonts: Not sure why, I guess I liked one of the font
- mozilla-https-everywhere: Could be removed since that's now upstream in Firefox
- aerc: newer than mutt and I can ask upstream question at work

## Packages removed

None at the moment

# Various TODOs

- Add a signature
- Customize the grub entry to get the name
- Move to renovate
- Move to self hosted registry
- Move to self hosted CI
- Cleanup unneeded rpms and convert some Flatpak to rpms to use less disk

# How to use

## Convert from Silverblue or others

```rpm-ostree rebase ostree-unverified-image:registry:ghcr.io/mscherer/bootc:latest```
