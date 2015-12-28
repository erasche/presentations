% Main Readme
% 2013-12-03
% Eric Rasche

# Exercises

These are a set of simple packages we will build during the course which will give you the skills necessary to create simple packages and build them for use on your debian based systems.

# List of Exercises

1. My First Package
2. Dependenices
3. Linking
4. Cleaning up after yourself
5. Signing your builds
6. Man pages
7. Update alternatives
8. Aliens!
9. Modifying existing packages
10. Metapackages and Equivs
11. Putting it all together (take-home)

# Dev Environment

To start building packages at home, you will need a few packages installed 

```bash
sudo apt-get install dpkg-dev build-essential make debhelper
```

If you want `Ronn` for man pages, 

```bash
sudo apt-get install rubygems
sudo gem install ronn
```
