LOCAL_PATH:= $(call my-dir)/../ld

include $(CLEAR_VARS)

LD_TARGET := arm-linux-androideabi
LD_BINDIR :=/system/bin
LD_SCRIPTDIR :=/system/$(LD_TARGET)/lib 
LD_TOOLBINDIR :=/system/$(LD_TARGET)/bin
LD_DEFAULT_EMULATION := armelf_linux_eabi
LD_TARGET_SYSTEM_ROOT :=

LOCAL_MODULE := ld

LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH)/../android \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH) \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/ld \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/bfd \
                    $(LOCAL_PATH)/../ld \
                    $(LOCAL_PATH)/../bfd \
                    $(LOCAL_PATH)/../include \
                    

LOCAL_CFLAGS := \
               -Wl,-rpath -Wl,/system/lib \
               -W -Wall -Wstrict-prototypes \
               -Wmissing-prototypes -Wshadow -Werror -g -O2 \

               
# ld specific cflags
LOCAL_CFLAGS += \
               -DDEFAULT_EMULATION=\"$(LD_DEFAULT_EMULATION)\" \
               -DTOOLBINDIR=\"$(LD_TOOLBINDIR)\" \
               -DBINDIR=\"$(LD_BINDIR)\" \
               -DTARGET=\"$(LD_TARGET)\" \
               -DTARGET_SYSTEM_ROOT=\"$(LD_TARGET_SYSTEM_ROOT)\" \
               -DTARGET_SYSTEM_ROOT_RELOCATABLE \
               -DSCRIPTDIR=\"$(LD_SCRIPTDIR)\" \
               -x c 
               
LOCAL_YACCFLAGS := -v


# Add
include $(TARGET_ARCH_FLAGS)

LOCAL_SRC_FILES := \
                    ldgram.y \
                    ldlex.l \
                    lexsup.c \
                    ldlang.c \
                    mri.c \
                    ldctor.c \
                    ldmain.c \
                    ldwrite.c \
                    ldexp.c \
                    ldemul.c \
                    ldver.c \
                    ldmisc.c \
                    ldcref.c \
                    ../android/$(TARGET_ARCH)/ld/ldearmelf_linux_eabi.c \
                    ../android/$(TARGET_ARCH)/ld/earmelfb_linux_eabi.c \
                    
LOCAL_STATIC_LIBRARIES := libc libstdc++ libbfd libopcodes libiberty libz

include $(BUILD_EXECUTABLE)

