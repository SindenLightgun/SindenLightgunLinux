# Installation

## Quick Setup

```
CURRENT_RELEASE=SindenLightgunSoftwareReleaseV1.05
cd /tmp; \
wget https://www.sindenlightgun.com/software/${CURRENT_RELEASE}.zip; \
unzip {CURRENT_RELEASE}.zip; \
chmod 755 *.sh; \
./setup-lightgun.sh; \
./setup-retropie.sh; \
rm -rf Sinden*; \
```

## Prep

```
chmod 755 setup*; \
./setup-lightgun.sh; \
./setup-retropie.sh; \
```

## Per Architecture

Determine which architecture you are running on and move the files to
your home directory

- Pi-Arm
- x86-32bit
- x86-64bit

- cp -r arch/YOUR-ARCHITECTURE/* /home/Lightgun/


