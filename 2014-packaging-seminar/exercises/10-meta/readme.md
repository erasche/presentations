% Meta
% 2013-12-03
% Eric Rasche

# Metapackages

Metapackages simply provide collecctions of packages as their dependencies, without providing any real software themselves. A good example of this would be the `kubuntu-desktop` package, which install KDE in Ubuntu. See below:

```bash
Package: kubuntu-desktop                 
State: installed
Automatically installed: no
Version: 1.254
Priority: optional
Section: metapackages
Maintainer: Kubuntu Developers <kubuntu-devel@lists.ubuntu.com>
Architecture: i386
Uncompressed Size: 54.3 k
Depends: alsa-base, alsa-utils, anacron, ark, bc, ca-certificates, dolphin, foomatic-db-compressed-ppds, foomatic-filters, genisoimage,
         ghostscript-x, inputattach, kde-window-manager, kde-workspace-bin, kde-zeroconf, kdemultimedia-kio-plugins, kdepasswd, kdm,
         khelpcenter4, klipper, kmix, konsole, ksnapshot, ksysguard, kubuntu-netbook-default-settings, language-selector-kde,
         libpam-ck-connector, libsasl2-modules, libxp6, nvidia-common, okular, openprinting-ppds, phonon-backend-gstreamer,
         plasma-desktop, plasma-netbook, printer-driver-pnm2ppa, rfkill, software-properties-kde, systemsettings, ttf-dejavu-core,
         ttf-freefont, ubuntu-extras-keyring, unzip, wireless-tools, wpasupplicant, xdg-user-dirs, xkb-data, xorg, zip
Recommends: acpi-support, akregator, amarok, appmenu-gtk, appmenu-gtk3, apport-kde, apturl-kde, avahi-autoipd, avahi-daemon, bluedevil,
            bluez, bluez-alsa, bluez-cups, brltty, cdrdao, cryptsetup, cups, cups-bsd, cups-client, dragonplayer, fonts-kacst-one,
            fonts-khmeros-core, fonts-lao, fonts-liberation, fonts-nanum, fonts-takao-pgothic, fonts-thai-tlwg, gnupg-agent, gpgsm,
            gstreamer0.10-qapt, gtk2-engines-oxygen, gtk3-engines-oxygen, gwenview, hplip, ibus-qt4, im-switch, jockey-kde, k3b,
            kaccessible, kaddressbook, kamera, kate, kcalc, kde-config-gtk, kde-config-touchpad, kdegraphics-strigi-analyzer,
            kdenetwork-filesharing, kdepim-kresources, kdepim-runtime, kdepim-strigi-plugins, kdesudo, kerneloops-daemon, kmag, kmail,
            kmousetool, knotes, kontact, kopete, korganizer, kpat, kppp, ksystemlog, ktimetracker, ktorrent, kubuntu-default-settings,
            kubuntu-docs, kubuntu-firefox-installer, kubuntu-notification-helper, kubuntu-web-shortcuts, kvkbd, kwalletmanager,
            laptop-detect, libnss-mdns, libqca2-plugin-ossl, libreoffice-calc, libreoffice-impress, libreoffice-kde,
            libreoffice-style-oxygen, libreoffice-writer, mobile-broadband-provider-info, muon, muon-installer, muon-notifier,
            okular-extra-backends, oxygen-cursor-theme, oxygen-icon-theme, partitionmanager, pcmciautils, pinentry-qt4,
            plasma-widget-facebook, plasma-widget-folderview, plasma-widget-kimpanel, plasma-widget-menubar,
            plasma-widget-message-indicator, plasma-widget-networkmanagement, plasma-widgets-addons, plymouth-theme-kubuntu-logo,
            plymouth-theme-kubuntu-text, policykit-desktop-privileges, polkit-kde-1, printer-applet, printer-driver-c2esp,
            printer-driver-foo2zjs, printer-driver-min12xxw, printer-driver-ptouch, printer-driver-pxljr, printer-driver-sag-gdi,
            printer-driver-splix, pulseaudio, pulseaudio-module-bluetooth, python-qt4-dbus, qapt-deb-installer, quassel, rekonq,
            system-config-printer-kde, ttf-indic-fonts-core, ttf-punjabi-fonts, ttf-ubuntu-font-family, ttf-wqy-microhei, udisks, upower,
            usb-creator-kde, userconfig, xcursor-themes, xdg-utils, xsettings-kde
Description: Kubuntu Plasma Desktop/Netbook system
 This package depends on all of the packages in the Kubuntu desktop system. Installing this package will include the default Kubuntu
 Plasma Desktop or Netbook installation. 
 
 It is safe to remove this package if some of the desktop system packages are not desired.

```

Note that the section is set as 'metapackages' and that the dependency list is a bit crazy. These metapackages can be useful if you have a lot of software and users commonly want to install all of it together. A genomics related example might be a GMOD metapackage which would install Chado, GBrowse, WebApollo, etc. 

# Equivs

Equivs is a package which provides scripts to create control files and build packages from control files. It is *perfect* for building metapackages, and lying to your installation about installing a package (I have done this...)

## equivs-control

This script generates a control file. It literally just copies a template control file provided with the package.

```bash
$ equivs-control control
$ cat control 
### Commented entries have reasonable defaults.
### Uncomment to edit them.
# Source: <source package name; defaults to package name>
Section: misc
Priority: optional
# Homepage: <enter URL here; no default>
Standards-Version: 3.9.2

Package: <package name; defaults to equivs-dummy>
# Version: <enter version here; defaults to 1.0>
# Maintainer: Your Name <yourname@example.com>
# Pre-Depends: <comma-separated list of packages>
# Depends: <comma-separated list of packages>
# Recommends: <comma-separated list of packages>
# Suggests: <comma-separated list of packages>
# Provides: <comma-separated list of packages>
# Replaces: <comma-separated list of packages>
# Architecture: all
# Copyright: <copyright file; defaults to GPL2>
# Changelog: <changelog file; defaults to a generic changelog>
# Readme: <README.Debian file; defaults to a generic one>
# Extra-Files: <comma-separated list of additional files for the doc directory>
# Files: <pair of space-separated paths; First is file to include, second is destination>
#  <more pairs, if there's more than one file to include. Notice the starting space>
Description: <short description; defaults to some wise words> 
 long description and info
 .
 second paragraph
```

This control file can now be used to do create a metapackage, or an empty version of existing package (e.g., LaTeX + kile case).

## equivs-build

```bash
$ equivs-build .
dh_testdir
dh_testroot
dh_prep
dh_testdir
dh_testroot
dh_install
dh_installdocs
dh_installchangelogs
dh_compress
dh_fixperms
dh_installdeb
dh_gencontrol
dh_md5sums
dh_builddeb
dpkg-deb: building package `equivs-dummy' in `../equivs-dummy_1.0_all.deb'.

The package has been created.
Attention, the package has been created in the current directory,
not in ".." as indicated by the message above!
```

equivs-build however has some useful options. It provides a `--full` flag to have a signed build and a `--arch` flag to build dummy packages for other architectures. 

# Exercise

Please create a metapackage specifying the following packages as dependencies:

* vim
* emacs
* firefox
* mysql-client
* mysql-server
* openjdk-7-jdk
* openjdk-6-jdk

and name the metapackage "devloper-tools". Then build the package using equivs-build and verify that you were successful using 

```bash
dpkg --info equivs-dummy_1.0_all.deb
```


