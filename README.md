# Installation

## Download

### New install

This will download the latest version of the Sinden Lightgun utilities

```
cd /home/pi; \
git clone https://github.com/SindenLightgun/SindenLightgunLinux.git; \
cd SindenLightgunLinux; \
echo ""; \
VERSION=$(git symbolic-ref --short -q HEAD); echo "Current Version ${VERSION}"
```

### Update

Update files from the remote repository

```
cd /home/pi/SindenLightgunLinux
git pull
```

### Change to a new version

If you are a new install, you will be on the default branch of the repo, typically the most current. If you want to change the version of either a new install or an update to a newer version, you can do that via:

```
git branch checkout VERSION_NAME
```

## Configure

Configure Sinden Lightgun dependencies, utilities, and borders. These scripts will update the software as needed, but not touch an existing configuration file(s).

```
cd /home/pi/SindenLightgunLinux; \
chmod 755 setup*; \
./setup-lightgun.sh; \
./setup-retropie.sh; \
```

## Per Architecture Executables

Determine which architecture you are running on and copy the files

### Pi-Arm

```
cp -r arch/Pi-Arm/* bin/
```

### x86-32bit

```
cp -r arch/x86-32bit/* bin/
```

### x86-64bit

```
cp -r arch/x86-64bit/* bin/
```

## Finish

You should now reboot to have EmulationStation include the Lightgun


