% Man, oh man.
% 2013-12-03
% Eric Rasche

# Man pages

Man pages are the helpful pages available to tell you how to use a piece of software, what the invocation options are, etc. There are a number of different categories of man pages:

------- ------------------------------------------------------------------
#/Cat   Description
------- ------------------------------------------------------------------
1	user commands

2	system calls

3	C library functions (on some platforms 3c for C, 3f for FORTRAN, etc.)

4	devices and network interfaces

5	file formats

6	games and demos

7	environments, tables, and troff macros

8	maintenance commands

9	x window system

l	local commands

n	new commands (tcl and tk use this)
------- ------------------------------------------------------------------

(for the source, see reference under format)

# Format

[Reference](https://www.fnal.gov/docs/products/ups/ReferenceManual/html/manpages.html)

# Example man page

```
.TH HELLO 1 LOCAL
.SH NAME
hello - print "Hello world" on stdout
.SH SYNOPSIS
.B hello [options]
.I option option
.B ["
.I -yy -zz
.B ..."]
.SH AVAILABILITY
All UNIX flavors
.SH DESCRIPTION
hello prints the string "Hello world" on standard output.
.SH OPTIONS
There are no options, but we'll make some up.
.TP 5
-yy
is one option
.TP
-zz
is another option
.SH AUTHOR
Joe Aggie
```

(Also from above reference)

# Important Files

`$PKG_ROOT/debian/manpages`

:   This file specifies the location of all your man pages. Optimally you might put them in a `man/` directory in the `$PKG_ROOT`

`$PKG_ROOT/man/cpt-build-tut-06.1`

:   This file will need to be created and is the properly formatted man page that will be installed to the target system

# How to include man pages

Man pages can be included with two steps:

1. Move your produce man page to `$PKG_ROOT/man/{package-name}.1`
1. Set the content of `$PKG_ROOT/debian/manpages` to `man/{package}.1`

You can, of course, list more manual pages and store them in different
locations. 

# Exercise

In this exercise, we will be making use of `Ronn` to convert a markdown formatted file into a roff formatted man page.

```bash
ronn test.md
```

The ronn software will produce a test.1 and test.1.html; you may delete test.1.html, test.1 is the man page we will use. Move the man page into the correct directory and ensure the correct contents of the `manpages` file.

```bash
cp test.1 $PKG_ROOT/man/cpt-build-tut-06.1
editor $PKG_ROOT/debian/manpages 
```

## Building

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

## Verification of Success

After installing, run

```bash
man cpt-build-tut-06
```

and you should be presented with the contents of your man file

# On your own

If you ever have to write man pages on your own, I recommend against writing [gnt]roff syntax. It's quite unpleasant. There are alternatives! For instance, try using the software we used, called [Ronn](http://rtomayko.github.io/ronn/) which allows one to write markdown syntax and convert directly to man pages.
