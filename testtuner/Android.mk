# Copyright 2006 The Android Open Source Project
LOCAL_PATH:= $(call my-dir)/
include $(CLEAR_VARS)

base := $(LOCAL_PATH)
LOCAL_C_INCLUDES := \
	$(base) \
	$(base)/../jadaptor/include/ \
	$(base)/../include \
	$(base)/jtsplayer \
	$(base)/jtsplayer/amcodec \
	$(base)/jtsplayer/amadec \
include external/stlport/libstlport.mk
LOCAL_SRC_FILES:= testtuner.c

LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_STATIC_LIBRARIES := libstbruntime

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += -D_GNU_SOURCE -I$(LOCAL_PATH)/../../include/ \


LOCAL_SHARED_LIBRARIES += libc libstdc++  
LOCAL_STATIC_LIBRARIES += libadaptor libstbruntime


LOCAL_MODULE:= testtuner
include $(BUILD_EXECUTABLE)

