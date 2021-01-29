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

Update the files of your current version:

```
cd /home/pi/SindenLightgunLinux
git pull
```

### Change to a new version

If you are a new install, you will be on the default branch of the repo, typically the most current. If you want to change the version of either a new install or an update to a newer version, you can grab all versions, list them, and change via:

```
cd /home/pi/SindenLightgunLinux
git fetch; git branch
git branch checkout VERSION_NAME
```


## Configure / Setup

Configure Sinden Lightgun dependencies, utilities, and borders. These scripts will install/update the software as needed, but not touch an existing configuration file(s).

```
cd /home/pi/SindenLightgunLinux; \
chmod 755 setup*; \
./setup-lightgun.sh; \
./setup-retropie.sh; \
```

## Per Architecture Binaries

If the set-up script does not determine your `arch` properly (it should indicate this), you will need to manually copy the files over. Determine which architecture you are running on and perform the following command based on your arch.

### Pi/Arm

```
cp -r arch/Pi-ARM/* bin/
```

### x86-32bit

```
cp -r arch/x86_32/* bin/
```

### x86-64bit

```
cp -r arch/x86_64/* bin/
```

## Finish

You should now reboot to have EmulationStation include the Lightgun


