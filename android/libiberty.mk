LOCAL_PATH:= $(call my-dir)/../libiberty

include $(CLEAR_VARS)


LOCAL_MODULE := libiberty
                    
LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH)/../android \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/libiberty \
                    $(LOCAL_PATH)/../android/$(TARGET_ARCH)/bfd \
                    $(LOCAL_PATH)/../include \
                    $(LOCAL_PATH)/../libiberty \
                    $(LOCAL_PATH)/../bfd \


LOCAL_CFLAGS := \
               -W -Wall -Wwrite-strings -Wc++-compat \
               -Wstrict-prototypes -pedantic \
               
include $(TARGET_ARCH_FLAGS)

LOCAL_SRC_FILES := \
                    regex.c \
                    cplus-dem.c \
                    cp-demangle.c \
                    md5.c \
                    sha1.c \
                    alloca.c \
                    argv.c \
                    choose-temp.c \
                    concat.c \
                    cp-demint.c \
                    crc32.c \
                    dwarfnames.c \
                    fdmatch.c \
                    fibheap.c \
                    dyn-string.c \
                    filename_cmp.c \
                    floatformat.c \
                    fnmatch.c \
                    fopen_unlocked.c \
                    getopt1.c \
                    getopt.c \
                    getpwd.c \
                    getruntime.c \
                    hashtab.c \
                    hex.c \
                    lbasename.c \
                    lrealpath.c \
                    make-relative-prefix.c \
                    make-temp-file.c \
                    mkstemps.c \
                    objalloc.c \
                    obstack.c \
                    pexecute.c \
                    partition.c \
                    physmem.c \
                    pex-common.c \
                    pex-one.c \
                    pex-unix.c \
                    safe-ctype.c \
                    simple-object.c \
                    simple-object-coff.c \
                    simple-object-elf.c \
                    simple-object-mach-o.c \
                    simple-object-xcoff.c \
                    sort.c \
                    spaces.c \
                    splay-tree.c \
                    stack-limit.c \
                    strerror.c \
                    strsignal.c \
                    timeval-utils.c \
                    unlink-if-ordinary.c \
                    xatexit.c \
                    xexit.c \
                    xmalloc.c \
                    xmemdup.c \
                    xstrdup.c \
                    xstrerror.c \
                    xstrndup.c \
                    setproctitle.c
                    
include $(BUILD_STATIC_LIBRARY)

