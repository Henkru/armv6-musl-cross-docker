TARGET=arm-linux-musleabihf
OUTPUT=/opt/cross/armv6
COMMON_CONFIG += CFLAGS="-g0 -Os" CXXFLAGS="-g0 -Os" LDFLAGS="-s"
GCC_CONFIG += --with-arch=armv6 --with-mode=arm --with-fpu=vfp
