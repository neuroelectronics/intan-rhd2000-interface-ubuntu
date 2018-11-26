# Intan RHD2000 Ubuntu Interface

## About

This is an Ubuntu-compatible version of the Intan RHD2000 Recording Software found [here](http://intantech.com/files/RHD2000interface_source_code_v1_5_2.zip) and based on this [repository](https://github.com/allenyin/IntanEvalBrd).

## Prerequisites

Make sure `g++`, `make`, `git`, and `qmake-qt4` are installed and in the PATH (do `which <command name>` to check). If not, do the following:

1. `g++` - `sudo apt-get install g++`
2. `make` - `sudo apt-get install make`
3. `git` - `sudo apt-get install git`
4. `qmake-qt4` - `sudo apt-get install qt4-default`

Verify that these are in the path by doing `which <command name>`.

## Installation

1. Clone the repository: `git clone https://github.com/neuroelectronics/intan-rhd2000-interface-ubuntu.git`
2. Navigate to `source/` directory: `cd intan-rhd2000-interface-ubuntu/source/`
3. Use `qmake-qt4` to generate a Makefile from the Qt project file: `qmake-qt4 RHD2000interface.pro`
4. Open the Makefile in the `source/` directory (`gedit Makefile`) and modify the following:
    a. Add `-std=c++11` to the `CXXFLAGS`
    b. Change `-02` to `-03` in both the `CFLAGS` and `CXXFLAGS`
5. Run `make`
6. Navigate back to the root directory: `cd ..`
7. Run the install script: `sudo bash install.sh`
8. Start the recording software: `cd source; ./RHD2000interface`

