LOCAL_PATH:= $(call my-dir)/../ld

include $(CLEAR_VARS)

LD_TARGET := arm-unknown-linux-androideabi
LD_BINDIR :=/system/bin
LD_SCRIPTDIR :=/system/$(LD_TARGET)/lib 
LD_SCRIPTDIR :=$(LOCAL_PATH)/../android/$(TARGET_ARCH)/ld/ldscripts
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
                    

#LOCAL_LDFLAGS := -Wl,-dynamic-linker /system/bin/linker

LOCAL_CFLAGS := \
               -Wl,-rpath -Wl,/system/lib \
               -W -Wall -Wstrict-prototypes \
               -Wmissing-prototypes -Wno-error=shadow -O0 \

               
# ld specific cflags
LOCAL_CFLAGS += \
               -DDEFAULT_EMULATION=\"$(LD_DEFAULT_EMULATION)\" \
               -DTOOLBINDIR=\"$(LD_TOOLBINDIR)\" \
               -DBINDIR=\"$(LD_BINDIR)\" \
               -DTARGET=\"$(LD_TARGET)\" \
               -DTARGET_SYSTEM_ROOT=\"\" \
               -DTARGET_SYSTEM_ROOT_RELOCATABLE \
               -DSCRIPTDIR=\"$(LD_SCRIPTDIR)\" \
               

# "-x c" forces the lex/yacc files to be compiled as c;
# the build system otherwise forces them to be c++.               
LOCAL_CFLAGS += -x c 
               
LOCAL_YACCFLAGS :=  -v

include $(TARGET_ARCH_FLAGS)

# Generated Source Files     
LOCAL_SRC_FILES := \
                    ldlex.l \
                    ldgram.y \
                    deffilep.y \
                    
# Static Source Files     
LOCAL_SRC_FILES += \
                    ldctor.c \
                    ldemul.c \
                    ldexp.c \
                    ldfile.c \
                    ldlang.c \
                    ldmain.c \
                    ldmisc.c \
                    ldver.c \
                    ldwrite.c \
                    lexsup.c \
                    mri.c \
                    ldcref.c \
                    pe-dll.c \
                    pep-dll.c \
                    ../android/$(TARGET_ARCH)/ld/earmelfb_linux_eabi.c \
                    ../android/$(TARGET_ARCH)/ld/earmelf_linux_eabi.c
                    
LOCAL_STATIC_LIBRARIES := libbfd libopcodes libiberty
LOCAL_SHARED_LIBRARIES := libz

include $(BUILD_EXECUTABLE)

