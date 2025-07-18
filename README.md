[![Build container image](https://github.com/YardQuit/mundus/actions/workflows/build.yml/badge.svg)](https://github.com/YardQuit/mundus/actions/workflows/build.yml)
# Mundus

## Purpose

My personal daily drive built from uBlue-os/image-template, utilizing the Fedora Silverblue container image (quay.io/fedora-ostree-desktops/silverblue:42) and featuring Cosmic Desktop. This setup includes development tools, including packages for Rust, C, Go, Zig, and Python, as well as the Helix, and Neovim editor for efficient writing. Furthermore, YubiKey authentication are enabled for sudo access, providing an additional layer of protection.
## Install
### rpm-ostree rebase
Rebase from rpm-ostree:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/yardquit/mundus:latest
```
Restart your system for the changes take effect:
```bash
systemctl reboot
```

### bootc switch
Rebase from bootc
```bash
sudo bootc switch ghcr.io/yardquit/mundus:latest
```

Restart your system for the changes take effect:
```bash
systemctl reboot
```

### YubiKey
Instructions to complete the yubikey registration process.
```bash
# Insert your YubiKey into a compatible USB port on your computer.
ykpamcfg -2
```
Ensure that YubiKey support is enabled and functional in your system settings.
```bash
sudo echo "Testing sudo with YubiKey"
```
