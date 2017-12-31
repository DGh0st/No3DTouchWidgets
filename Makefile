export ARCHS = armv7 arm64
export TARGET = iphone:clang:latest:latest

PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
FINAL_PACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = No3DTouchWidgets
No3DTouchWidgets_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
