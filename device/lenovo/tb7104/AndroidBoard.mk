#
# Copyright (C) 2026 The Android Open Source Project
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter tb7104,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
