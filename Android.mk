LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(TW_INCLUDE_BUSYBOX), true)
    #busybox prebuilt
    include $(CLEAR_VARS)
    LOCAL_MODULE := busybox
    LOCAL_MODULE_STEM := busybox
    LOCAL_MODULE_TAGS := eng
    LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES
    LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
    LOCAL_SRC_FILES := $(LOCAL_MODULE)
    include $(BUILD_PREBUILT)
endif
