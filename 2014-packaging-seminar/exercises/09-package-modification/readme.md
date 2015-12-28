% "Hacking"
% 2013-12-03
% Eric Rasche

# Modifying Existing Packages

In this excise we will break apart the package from the previous exercise to work with it.

# Commands

Using `dpkg --extract` and `dpkg --control` to extract the relevant portions of the archive.

```bash
esr@cpt:~$ dpkg --extract hhsuite_2.0.16-2_amd64.deb hhsuite
esr@cpt:~$ find hhsuite/
hhsuite/
hhsuite/usr
hhsuite/usr/share
hhsuite/usr/share/doc
hhsuite/usr/share/doc/hhsuite-2.0.16
hhsuite/usr/share/doc/hhsuite-2.0.16/LICENSE.gz
hhsuite/usr/share/doc/hhsuite-2.0.16/README.gz
hhsuite/usr/share/doc/hhsuite-2.0.16/CHANGES.gz
hhsuite/usr/share/doc/hhsuite-2.0.16/hhsuite-userguide.pdf.gz
hhsuite/usr/bin
hhsuite/usr/bin/hhblits
hhsuite/usr/bin/hhalign
hhsuite/usr/bin/hhmake
hhsuite/usr/bin/hhsearch
hhsuite/usr/include
hhsuite/usr/include/ffindex.h
hhsuite/usr/include/ffutil.h
hhsuite/usr/lib64
hhsuite/usr/lib64/libffindex.so.0.1
hhsuite/usr/lib64/libffindex.a
hhsuite/usr/lib64/libffindex.so
# <snipped>
```

Extracting the control data. We name the extracted folder `DEBIAN` instead of `debian` for reasons thare are outside the scope of this lecture.

```bash
esr@cpt:~$ dpkg --control hhsuite_2.0.16-2_amd64.deb hhsuite/DEBIAN
esr@cpt:~$ find hhsuite/DEBIAN/
hhsuite/DEBIAN/
hhsuite/DEBIAN/shlibs
hhsuite/DEBIAN/postinst
hhsuite/DEBIAN/md5sums
hhsuite/DEBIAN/control
hhsuite/DEBIAN/postrm
```

excellent! We have plenty of files to work with. They can then be modified and repackage them. To put the package back together we can simply do:

```bash
dpkg -b hhsuite hhsuite.deb
```

You will notice this is not the usual command we use to build packages. This is a lower-level command used by `dpkg-buildpackage`. There are significantly fewer checks/bells and whistles with this command and should not be used if you are building your own packages. 
