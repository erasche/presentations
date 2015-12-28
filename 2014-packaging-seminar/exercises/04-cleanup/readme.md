% Cleaning up
% 2013-12-03
% Eric Rasche

# Cleanup

In this exercise, you will be modifying the pre- and post- installation and removal executables

# Important Files

Via [here][1]

`$PKG_ROOT/debian/preinst`

:   This script executes before that package will be unpacked from its Debian archive (".deb") file. Many 'preinst' scripts stop services for packages which are being upgraded until their installation or upgrade is completed (following the successful execution of the 'postinst' script).

`$PKG_ROOT/debian/postinst`

:   This script typically completes any required configuration of the package foo once foo has been unpacked from its Debian archive (".deb") file. Often, 'postinst' scripts ask the user for input, and/or warn the user that if he accepts default values, he should remember to go back and re-configure that package as the situation warrants. Many 'postinst' scripts then execute any commands necessary to start or restart a service once a new package has been installed or upgraded.

`$PKG_ROOT/debian/prerm`

:   This script typically stops any daemons which are associated with a package. It is executed before the removal of files associated with the package.

`$PKG_ROOT/debian/postrm`

:   This script typically modifies links or other files associated with foo, and/or removes files created by the package. (Also see [What is a Virtual Package?, Section 7.8.](http://www.debian.org/doc/manuals/debian-faq/ch-pkg_basics.en.html#s-virtual))


Sometimes you will see the above as `$packagename.$type` where `$type` is one of the above file names.

# Exercise

In this exercise you will be doing two things:

1. In the postinst, you will be creating a log directory (`mkdir -p /var/log/cpt-build-tut/`)
2. In the postrm, you will be removing the log directory if a purge was specified (`rm -rf /var/log/cpt-build-tut/`)

## Building

```bash
cd files
dpkg-buildpackage
```

## Installing

Assuming you were still in `$PKG_ROOT`

```bash
cd ../
sudo dpkg -i <package>.deb
<command_name>
```


[1]: http://www.debian.org/doc/manuals/debian-faq/ch-pkg_basics.en.html#s-maintscripts 
