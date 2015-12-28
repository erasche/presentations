% GPG Sigs
% 2013-12-03
% Eric Rasche

# Signing our builds

In this exercise, you will cryptographically sign your build.

# Building

```bash
cd files
dpkg-buildpackage -k{YOUR_GPG_KEY_ID}
```

e.g., `dpkg-buildpackage -kEC31CA55`
