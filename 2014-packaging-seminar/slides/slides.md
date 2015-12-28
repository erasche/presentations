% Debian Packaging Seminar
% 2013-11-18
% Eric Rasche

# Debian Packages

Debian packages are made up of a few things

* Files to be moved into the host file system
* Scripts which are executed before and after installation and removal to aid in the process
* Information about the software and its dependencies

# Structure of Debian Packages

Debian archives, a `.deb` file, is essentially just an `.ar` archive, which contains two files:

control.tar.gz

:    Contains the `/debian/` directory which instructs the package how to be installed, the dependencies, et cetera.

data.tar.gz

:    This archive contains the binaries, source, and other files which will be moved to the filesystem.

# Control files

Control files specify meta information about a package, such as 

* who maintains it
* dependencies
* description of the package

# Packaging Compiled Software

* Very rarely needs special steps. 
* Most you just check where the software is set to go to, build it, and then move those files into your package tree.

# Modification of existing Packages

* Easy to do.
* Modify *any* DEB
* Break apart in two steps and put back together in one.

# Building + Signing Simple Packagies

* Use the `-k` option. 
* If you are not using GPG, start using it!
* Sign packages, encrypt email; prove you are who you say you are.
* [Read more here](https://wiki.debian.org/SecureApt)

# Update alternatives

* Allows easy configuration of shortcuts for binaries
* e.g., how `vim`, `emacs`, and `nano` can exist as alternatives for the default editor (available as `editor` from the terminal).

# APT

* Collection of tools for managing binaries and depenencies
* [Further Reading](https://wiki.debian.org/Apt)

# Reprepro & APT Servers

* Reprepro allows creation and maintenance of an apt repository
* For documentation, install reprepro and see (`/usr/share/doc/reprepro/manual`)[https://cpt.tamu.edu/reprepro/manual.html].

