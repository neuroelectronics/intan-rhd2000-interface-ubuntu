# Intan RHD2000 Ubuntu Interface

## About

This is an Ubuntu-compatible version of the Intan RHD2000 Recording Software found [here](http://intantech.com/files/RHD2000interface_source_code_v1_5_2.zip) and based on this [repository](https://github.com/allenyin/IntanEvalBrd).

## Installation

1. Install Qt5: `wget http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run`
2. Navigate to `source/` directory: `cd source/`
3. Use `qmake-qt4` to generate a Makefile from the Qt project file: `qmake-qt4 RHD2000interface.pro`
4. Open the Makefile in the `source/` directory and modify the following:
    a. Add `-std=c++11` to the `CXXFLAGS`
    b. Change `-02` to `-03` in both the `CFLAGS` and `CXXFLAGS`
5. Run `make`
6. Navigate back to the root directory: `cd ..`
7. Install the USB drivers: `cp 60-opalkelly.rules /etc/udev/rules.d/`
8. Reload the `udev` rules: `/sbin/udevadm control --reload`
9. Install the `libudev0` library for your corresponding architecture:
    a. Download the Debian package here: `https://packages.debian.org/wheezy/libudev0`
    b. Install the package manually: `dpkg -i <pkg.deb>`
10. Add the corresponding bitfile from the `bitfiles/` directory to the `source/` directory: `cp bitfiles/<your_bitfile.bit> source/main.bit`
11. Copy the modified library files to the source depending on your Opal-Kelly FPGA version: `cp modified-lib-files/<OK_version>/* source/`
12. Start the recording software: `cd source; ./RHD2000interface`

