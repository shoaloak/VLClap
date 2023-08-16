TARGET := iphone:clang:latest:12.2
INSTALL_TARGET_PROCESSES = 'VLC for iOS'

# Custom
THEOS_PACKAGE_SCHEME = rootless
THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VLClap

VLClap_FILES = $(shell find Sources/VLClap -name '*.swift') $(shell find Sources/VLClapC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
VLClap_SWIFTFLAGS = -ISources/VLClapC/include
VLClap_CFLAGS = -fobjc-arc -ISources/VLClapC/include

include $(THEOS_MAKE_PATH)/tweak.mk
