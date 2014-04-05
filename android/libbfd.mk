LOCAL_PATH:= $(call my-dir)/../bfd

include $(CLEAR_VARS)

LOCAL_MODULE := libbfd


LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH) \
                    $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/../android \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/bfd \
                    $(LOCAL_PATH)/../include \
                    external/zlib


LOCAL_CFLAGS := \
               -DDEBUGDIR=\"/system/lib\" \
               -DDEFAULT_VECTOR=bfd_elf32_littlearm_vec \
               -DSELECT_VECS='&bfd_elf32_littlearm_vec,&bfd_elf32_bigarm_vec,&bfd_elf32_little_generic_vec,&bfd_elf32_big_generic_vec' \
               -DSELECT_ARCHITECTURES='&bfd_arm_arch' \
               -DHAVE_bfd_elf32_littlearm_vec -DHAVE_bfd_elf32_bigarm_vec -DHAVE_bfd_elf32_little_generic_vec -DHAVE_bfd_elf32_big_generic_vec \
               -W -Wall -Wstrict-prototypes \
               -Wno-error=missing-prototypes -Wshadow -O2 \
               -Wno-error=pointer-sign
               

# Add
include $(TARGET_ARCH_FLAGS)

LOCAL_SRC_FILES := \
                    bfd.c \
                    cache.c \
                    corefile.c \
                    coffgen.c \
                    archive.c \
                    bfdwin.c \
                    format.c \
                    init.c \
                    bfdio.c \
                    archures.c \
                    libbfd.c \
                    section.c \
                    opncls.c \
                    syms.c \
                    targets.c \
                    reloc.c \
                    hash.c \
                    linker.c \
                    srec.c \
                    binary.c \
                    tekhex.c \
                    ihex.c \
                    stabs.c \
                    stab-syms.c \
                    merge.c \
                    dwarf2.c \
                    simple.c \
                    verilog.c \
                    compress.c \
                    elf32-arm.c \
                    elf-vxworks.c \
                    elf32.c \
                    elf-nacl.c \
                    elf.c \
                    elflink.c \
                    elf-attrs.c \
                    elf-strtab.c \
                    dwarf1.c \
                    elf-eh-frame.c \
                    cpu-arm.c \
                    elf32-gen.c \
                    archive64.c \

include $(BUILD_STATIC_LIBRARY)

