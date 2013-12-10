#!/bin/bash

# using http cache like wcache to save download time
#export http_proxy="http://10.203.175.1:9090"

wget -q http://oss.oracle.com/debian/dists/unstable/main/binary-i386/libaio_0.3.104-1_i386.deb
wget -q http://oss.oracle.com/debian/dists/unstable/non-free/binary-i386/oracle-xe-universal_10.2.0.1-1.1_i386.deb
sudo dpkg -i libaio_0.3.104-1_i386.deb
sudo dpkg -i oracle-xe-universal_10.2.0.1-1.1_i386.deb

# The following step fixes dependencies. It should install the following packages:
# gcc-4.6-base
# libgcc1 1:4.6.3-1ubuntu5 
# libc6 2.15-0ubuntu10 
# libtinfo5 5.9-4 
# libncurses5 5.9-4 
# libreadline6 6.2-8 
# bc 1.06.95-2 
# libgpm2 1.20.4-4]
sudo apt-get install -f -y

sudo /etc/init.d/oracle-xe configure <<EOF
8080
1521
system
system
y
EOF
