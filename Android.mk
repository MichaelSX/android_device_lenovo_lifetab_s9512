LOCAL_PATH := $(call my-dir)

ifeq ($(BOARD_VENDOR), Lenovo)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif

