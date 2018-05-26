#!/bin/sh
version=$(lsb_release -sr)


case $version in
18.04)
    echo "Version of ubuntu is 18.04 running script..."
    ./build_dev_machine_ubuntu18_04.sh
    ;;
16.04)
    echo "Version of Ubuntu is 16.04 running script..."
    ./build_dev_machine_ubuntu16_04.sh
esac