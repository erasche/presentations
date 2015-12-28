% Alternatives
% 2013-12-03
% Eric Rasche

# Update alternatives

In this exercise, we will provide a more advanced version of cpt-build-tut-01, but we wish them to coexist. We will configure update alternatives to let us do this.

# Important Files

`$PKG_ROOT/debian/postinst`

:   Executed after installation with the `configure` target, here we call `update-alternatives` with the appropriate command to update the symlink for `cpt-build-tut-01`. The command in the postinstallation file sets up the necessary link.

`$PKG_ROOT/debian/postrm`

:   For the targets of remove, upgrade, and deconfigure we wish to remove the  alternative we set for `cpt-build-tut-01`.

# Exercise

After you install your programme (in `postinst`), you'll want to add your new alternatives. Do so with:

    update-alternatives --install \\
        /usr/bin/cpt-build-tut-01 cpt-build-tut-01 /usr/bin/cpt-build-tut-01v2 300

After you remove your programme (in `postrm`), you'll want to fix the alternatives. Do so with the command:

    update-alternatives --remove cpt-build-tut-01 /usr/bin/cpt-build-tut-01v2

# Building

```bash
cd $PKG_ROOT
dpkg-buildpackage
```

## Instalation 

Assuming you were still in `$PKG_ROOT`

```bash
cd ../
sudo dpkg -i <package>.deb
```

## Verification

This package was designed to "upgrade" cpt-build-tut-01. As such, it provides the executable `cpt-build-tut-01v2`. When it installs, we override the previous version by setting a higher priority.

You should be able to verify that everything worked by doing

```bash
cpt-build-tut-01
```

It should be very obvious if this is the new command being run or not. Additionally, the side benefit of `update-alternatives` is that both of the original commands are still available. You can see them by typing the following and hitting `<TAB>` a couple times.

```bash
cpt-build-tut-01v
```

