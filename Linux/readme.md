# Installation

## Download

This will download the latest version of the Sinden Lightgun utilities

```
cd /home/pi; \
git clone git@github.com:cgmckeever/SindenLightgun.git; \
ehco ""; \
VERSION=$(git symbolic-ref --short -q HEAD); echo "Current Version ${VERSION}"
```

## Configure

Configure Sinden Lightgun dependencies, utilities, and borders

```
chmod 755 setup*; \
./setup-lightgun.sh; \
./setup-retropie.sh; \
```

## Per Architecture Executables

Determine which architecture you are running on and copy the files

### Pi-Arm

```
cp -r arch/Pi-Arm/* ../bin/
```

### x86-32bit

```
cp -r arch/x86-32bit/* ../bin/
```

### x86-64bit

```
cp -r arch/x86-64bit/* ../bin/
```

## Finish

You should now reboot to have EmulationStation include the Lightgun


