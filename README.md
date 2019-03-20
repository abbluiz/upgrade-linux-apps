# Motivation and Purpose

If you like trying different Linux distros, you'll often need to learn how to upgrade, install, and remove packages on each distribution. This collection of Shell Scripts comes to solve that by automatically detecting which package manager to use when you instruct the apps to be upgraded, installed, or removed.

# Installation instructions

1. Clone the repository:
```
$ git clone https://github.com/abbluiz/upgrade-linux-apps.git
```

2. Run the installation script as root to install or update the scripts:
```
$ cd upgrade-linux-apps
$ sudo ./install-ula.sh
```

## Easier update method

1. Install it from source as instructed.
2. Simply run `update-ula` as root. This also requires internet access.

## Uninstallation

1. Run `uninstall-ula` as root.

# TODO Usage

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

# TODO LIST
* Support more package managers
* Use version numbers
* Provide option to run scripts without assume=yes
* Option to install apps
* Option to remove apps
* Option to install/remove apps list from file 
