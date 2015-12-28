% Aliens
% 2013-12-03
% Eric Rasche

# Using alien to convert RPMs to DEBs

Alien is a very useful utility which allows you to convert (relatively simple) RPMs to DEBs. 

# Instructions

To convert an rpm, use the command `alien`, available from a package fo the same name. It needs either `sudo` or `fakeroot` to run, as the files need to be owned by root inside of the archive.

```bash
esr@cpt:~$ fakeroot alien hhsuite-latest.x86_64.rpm 
hhsuite_2.0.16-2_amd64.deb generated
```

# Verification

You can verify you were successful by easily inspecting the contents of the package with these two commands:

```bash
dpkg --info hhsuite_2.0.16-2_amd64.deb
dpkg -c hhsuite_2.0.16-2_amd64.deb # c is for contents
```

# Further Reading

* [Ubuntu/Community/RPM/AlienHowTo](https://help.ubuntu.com/community/RPM/AlienHowto)
