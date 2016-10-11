# Copyright 2008, The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

#LOCAL_STATIC_JAVA_LIBRARIES := activation1 additionnal1 mail1 v4

LOCAL_JAVA_LIBRARIES := mediatek-framework  
LOCAL_SDK_VERSION := current
LOCAL_SRC_FILES := $(call all-java-files-under, src) \

#        src/com/changhong/batteryaidl/IBatteryService.aidl \
#        src/com/changhong/batteryaidl/IMeasureCallBack.aidl

LOCAL_PACKAGE_NAME := NotesCH1
LOCAL_CERTIFICATE := platform

LOCAL_PROGUARD_ENABLED := full
LOCAL_PROGUARD_FLAG_FILES := proguard.flags
include $(BUILD_PACKAGE)

##################################################

include $(CLEAR_VARS)

#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := activation1:libs/activation.jar \
#        additionnal1:libs/additionnal.jar \
#        mail1:libs/mail.jar \
#		v4:libs/android-support-v4.jar

include $(BUILD_MULTI_PREBUILT)

# Use the following include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
