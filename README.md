# Raspberry Pi Ubuntu Server 24.04 Cloud-Init

This is a simple cloud-init configuration for Raspberry Pi Ubuntu Server 24.04.
It will also install Docker

## Requirements

- [flash](https://github.com/hypriot/flash)
- [Ubuntu for Raspberry Pi image](https://ubuntu.com/download/raspberry-pi)

## Setup

```shell
# Config wifi password, or edit network-config.example and save as network-config
./wifi.rb

# Flash image to Micro SD card
flash -u ./user-data \
  -n your-hostname \
  -F ./network-config \
  ~/Downloads/ubuntu-24.04.1-preinstalled-server-arm64+raspi.img.xz
```

## References

I got the idea from these sources:

- <https://contabo.com/blog/the-ultimate-guide-to-docker-installation-and-deployment-using-cloud-init>
- <https://github.com/StefanScherer/rpi-ubuntu>
- <https://github.com/martadinata666/cloud-init>
