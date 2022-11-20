# buildroot-rk3588

This repository is for Buildroot build for ROCK 5B based on RK3588 CPU [Official product page radxa](https://wiki.radxa.com/Rock5) <br>
Since there is no original Buildroot support, this repository has been created to support Buildroot for RK3588 CPU

Based on the latest version of Buildroot 2022.08.x , Rockhip Uboot x.x.x , Rockhip Kernel stable-5.10.x


# Important note
This repository includes submodules (via ssh links) from private repositories, you need to add SSH keys to your GitHub account to build locally on your PC.


### Depends
In order to use Buildroot, you need to have a Linux distribution installed on your workstation. Any reasonably recent Linux distribution (Ubuntu, Debian) will work fine.

Then, you need to install a small set of packages, as described in the [Buildroot manual System requirements section.](https://buildroot.org/downloads/manual/manual.html#requirement)

For Debian/Ubuntu distributions, the following command allows to install the necessary packages:

```bash
# TODO: need to check all depends
$ sudo apt install debianutils sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio unzip rsync file bc git
```

### Manual build

Clone thhe repository and pull all submodules

```bash
# clone repo
git clone git@github.com:Military-Vehicle-Detection/buildroot-rk3588.git

# clone submodule
cd buildroot-rk3588
git submodule init
git submodule update --recursive

cd buildroot
make BR2_EXTERNAL=../external rock5b_defconfig
make -j8

# NOTE: for minimum print log during build run brmake utility 
utils/brmake
```

If the build was successful, you will find `sdcard.img` in the output/image folder which is ready to be written to an EMMC or SD card

### Auto build
TODO: need to make build bash scripts and update README

### Configure buildoot

```bash
cd buildroot
make menuconfig

# after select new packages for build need start new build
make -j8
```

### Configure linux kernel 

```bash
cd buildroot
make linux-menuconfig

# after select new packages for build need start new build
# for full rebuild linux make command: make linux-build
make -j8
```


## How to flash image
TODO: need to update


## How to use SDK
TODO: need to update

## How to add new packages for build image
TODO: need to update

