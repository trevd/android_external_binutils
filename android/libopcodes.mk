LOCAL_PATH:= $(call my-dir)/../opcodes

include $(CLEAR_VARS)


LOCAL_MODULE := libopcodes


LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH)/../android \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/opcodes \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/bfd \
                    $(LOCAL_PATH)/../include \
                    $(LOCAL_PATH)/../opcodes \
                    $(LOCAL_PATH)/../bfd \


LOCAL_CFLAGS := \
               -DARCH_arm \
               -W -Wall -Wstrict-prototypes \
               -Wmissing-prototypes -Wshadow -Werror -g -O2 \
               
include $(TARGET_ARCH_FLAGS)


LOCAL_SRC_FILES := \
                    dis-init.c \
                    dis-buf.c \
                    arm-dis.c \
                    disassemble.c \
                    


include $(BUILD_STATIC_LIBRARY)

