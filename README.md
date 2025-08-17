# grml-rescueboot

[![Sponsor](https://img.shields.io/badge/Sponsor-GitHub-purple?logo=github)](https://github.com/sponsors/grml)
[![GitHub release](https://img.shields.io/github/v/release/grml/grml-rescueboot)](https://github.com/grml/grml-rescueboot/releases)
[![Debian package](https://img.shields.io/debian/v/grml-rescueboot/trixie?label=debian)](https://packages.debian.org/trixie/grml-rescueboot)
[![Ubuntu package](https://img.shields.io/ubuntu/v/grml-rescueboot)](https://packages.ubuntu.com/search?keywords=grml-rescueboot)

Boot [Grml](https://grml.org/) Live Linux directly from GRUB without USB key or CD.

## Overview

grml-rescueboot integrates Grml ISO booting into GRUB.
`update-grub` will search for Grml ISO images in `/boot/grml` and a boot menu entry for each image.
It's purpose is to use one of those images to boot a Grml rescue system without using a CD, USB stick or network boot.

## Installation

### From Debian repositories

```bash
sudo apt install grml-rescueboot
```

Package information: [grml-rescueboot on packages.debian.org](https://packages.debian.org/trixie/grml-rescueboot)

### From GitHub releases

Download the latest `.deb` package from the [releases page](../../releases) and install:

```bash
sudo apt install ./grml-rescueboot_*.deb
```

## Quick start

1. Install the package (see above)
2. Download and set up a Grml ISO:
   ```bash
   sudo update-grml-rescueboot
   ```
3. Reboot and select Grml from the GRUB menu

### Custom boot options

By editing `/etc/default/grml-rescueboot` you can customize the default boot options:

```bash
# Optional: custom boot options
CUSTOM_BOOTOPTIONS="lang=en"
```

## License

This project is licensed under the GPL v2+.

## Contributing

- **Source code**: https://github.com/grml/grml-rescueboot
- **Issues**: https://github.com/grml/grml-rescueboot/issues
- **Releases**: https://github.com/grml/grml-rescueboot/releases
- **Grml Live Linux**: https://grml.org
