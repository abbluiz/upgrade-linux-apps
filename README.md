Simple scripts to update repositories, upgrade and auto-remove apps on popular Linux package managers

# Install or update from source

1. Clone the repository
```
$ git clone https://github.com/abbluiz/upgrade-linux-apps.git
```

2. Run the installation script as root to install or update the scripts
```
$ cd upgrade-linux-apps
$ sudo ./ula-install.sh
```


## Alternative update method (easier)

1. Install it from source as instructed
2. Simply run `ula-update-from-git` as root. This requires internet access.

## Uninstall

1. Run `ula-uninstall` as root.

# Usage

1. After installation, simply run `upgrade-linux-apps` as root to upgrade all your apps. The script will detect which package manager to use automatically and will update all repositories, upgrade all apps that need to be upgraded, remove useless packages and clean the filesystem.
2. Alternatively, you can use specific scripts for a certain package manager directly. Please, refer to *Supported package managers*.

## Supported package managers

This list is expected to grow.

### apt
```
$ sudo apt-upgrade-apps
```

### dnf

```
$ sudo dnf-upgrade-apps
```

# TODO
* Support more package managers
* Support quiet mode
* Change default installation folder
* Use version numbers
* Provide option to run scripts without assume=yes
