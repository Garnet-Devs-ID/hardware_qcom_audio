LOCAL_PATH := $(call my-dir)

#-------------------------------------------
#            Build HFP LIB
#-------------------------------------------
include $(CLEAR_VARS)

LOCAL_MODULE := libhfp_pal
LOCAL_VENDOR_MODULE := true

ifeq ($(TARGET_BOARD_AUTO),true)
  LOCAL_CFLAGS += -DPLATFORM_AUTO
endif

LOCAL_SRC_FILES:= Hfp.cpp

LOCAL_CFLAGS += \
    -Wall \
    -Werror \
    -Wno-unused-function \
    -Wno-unused-variable

LOCAL_SHARED_LIBRARIES := \
    libaudioroute \
    libaudioutils \
    libcutils \
    libdl \
    libexpat \
    liblog \
    libar-pal

LOCAL_C_INCLUDES := \
    vendor/qcom/opensource/pal \
    vendor/qcom/opensource/audio-hal/primary-hal/hal-pal \
    vendor/qcom/opensource/audio-hal/primary-hal/hal/audio_extn \
    external/expat/lib \
    system/media/audio_utils/include \
    $(call include-path-for, audio-route) \

LOCAL_HEADER_LIBRARIES += libhardware_headers
LOCAL_HEADER_LIBRARIES += libsystem_headers
include $(BUILD_SHARED_LIBRARY)

#-------------------------------------------
#            Build FM LIB
#-------------------------------------------
include $(CLEAR_VARS)

LOCAL_MODULE := libfmpal
LOCAL_VENDOR_MODULE := true

LOCAL_SRC_FILES:= FM.cpp

LOCAL_CFLAGS += \
    -Wall \
    -Werror \
    -Wno-unused-function \
    -Wno-unused-variable

LOCAL_SHARED_LIBRARIES := \
    libaudioroute \
    libaudioutils \
    libcutils \
    libdl \
    libexpat \
    liblog \
    libar-pal

LOCAL_C_INCLUDES := \
    vendor/qcom/opensource/pal \
    vendor/qcom/opensource/audio-hal/primary-hal/hal-pal \
    vendor/qcom/opensource/audio-hal/primary-hal/hal/audio_extn \
    external/expat/lib \
    system/media/audio_utils/include \
    $(call include-path-for, audio-route) \

LOCAL_HEADER_LIBRARIES += libhardware_headers
LOCAL_HEADER_LIBRARIES += libsystem_headers
include $(BUILD_SHARED_LIBRARY)
