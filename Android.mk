LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),pocket2plus)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
