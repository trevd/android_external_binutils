LOCAL_PATH:= $(call my-dir)/../gas

include $(CLEAR_VARS)


LOCAL_MODULE := as-new

LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH)/../android \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH) \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/libiberty \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/bfd \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/gas \
                    $(LOCAL_PATH)/../include \
                    $(LOCAL_PATH)/../libiberty \
                    $(LOCAL_PATH)/../bfd \
                    $(LOCAL_PATH)/../gas \
                    $(LOCAL_PATH)/../gas/config \

LOCAL_CFLAGS := \
               -DARCH_arm \
               -W -Wall -Wstrict-prototypes \
               -Wmissing-prototypes -Wshadow -Werror -g -O2 \
               

# Add
include $(TARGET_ARCH_FLAGS)

LOCAL_SRC_FILES := \
                    app.c \
                    as.c \
                    atof-generic.c \
                    cond.c \
                    compress-debug.c \
                    dwarf2dbg.c \
                    dw2gencfi.c \
                    depend.c \
                    ecoff.c \
                    ehopt.c \
                    expr.c \
                    flonum-copy.c \
                    flonum-konst.c \
                    flonum-mult.c \
                    frags.c \
                    hash.c \
                    input-file.c \
                    input-scrub.c \
                    listing.c \
                    literal.c \
                    macro.c \
                    messages.c \
                    output-file.c \
                    read.c \
                    remap.c \
                    sb.c \
                    stabs.c \
                    subsegs.c \
                    symbols.c \
                    write.c \
                    config/tc-arm.c \
                    config/obj-elf.c \
                    config/atof-ieee.c
                    
LOCAL_STATIC_LIBRARIES := libc libstdc++ libbfd libopcodes libiberty libz

LOCAL_MODULE := as-new

include $(BUILD_EXECUTABLE)

