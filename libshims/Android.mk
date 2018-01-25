LOCAL_PATH := $(call my-dir)

# camera shim
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    camera_shim.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libutils \
    libgui \
    libui

LOCAL_C_INCLUDES := \
    frameworks/native/include

LOCAL_MODULE := libshim_camera
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := wvm_shim.cpp
LOCAL_SHARED_LIBRARIES := libstagefright_foundation
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
