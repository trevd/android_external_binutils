LOCAL_PATH:= $(call my-dir)

TARGET_ARCH_FLAGS := $(LOCAL_PATH)/android/target-$(TARGET_ARCH).mk
LOCAL_VERSION := 2.23.52.0.2
BUILD_LIBBFD := $(LOCAL_PATH)/android/libbfd.mk
BUILD_LIBOPCODES := $(LOCAL_PATH)/android/libopcodes.mk
BUILD_LIBIBERTY := $(LOCAL_PATH)/android/libiberty.mk
BUILD_LIBIBERTY := $(LOCAL_PATH)/android/gas.mk

include $(BUILD_LIBBFD)
include $(BUILD_LIBOPCODES)
include $(BUILD_LIBIBERTY)
