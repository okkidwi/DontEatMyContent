TARGET := iphone:clang:latest:14.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DontEatMyContent

DontEatMyContent_FILES = src/Tweak.x src/Settings.x
DontEatMyContent_CFLAGS = -fobjc-arc -I$(THEOS_PROJECT_DIR) -DTWEAK_VERSION=$(shell grep 'Version:' control | cut -d ' ' -f 2)
DontEatMyContent_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
