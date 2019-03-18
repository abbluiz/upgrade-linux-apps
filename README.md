Simple scripts to update repositories, upgrade and auto-remove apps on popular Linux package managers

# Install or update from source

1. Clone the repository
```
$ git clone https://github.com/abbluiz/upgrade-linux-apps.git
```

2. Run the installation script as root to install or update the scripts
```
$ cd upgrade-linux-apps
$ sudo ./install-ula.sh
```


## Alternative update method (easier)

1. Install it from source as instructed
2. Simply run `update-ula` as root. This also requires internet access.

## Uninstall

1. Run `uninstall-ula` as root.

# Usage

TODO

## Supported package managers

This list is expected to grow.

### apt
```
$ sudo ula-apt
```

### dnf

```
$ sudo ula-dnf
```

# TODO
* Support more package managers
* Use version numbers
* Provide option to run scripts without assume=yes
* Option to install apps
* Option to remove apps
* Option to install/remove apps list from file 
