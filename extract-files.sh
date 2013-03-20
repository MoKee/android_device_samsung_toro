#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=toro
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/app/BIP.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/BIP.apk
adb pull /system/app/IMSFramework.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/IMSFramework.apk
adb pull /system/app/RTN.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/RTN.apk
adb pull /system/app/SDM.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/SDM.apk
adb pull /system/app/SPG.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/SPG.apk
adb pull /system/app/SyncMLSvc.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/SyncMLSvc.apk
adb pull /system/app/VZWAPNLib.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/VZWAPNLib.apk
adb pull /system/app/VZWAPNService.apk ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/VZWAPNService.apk
adb pull /system/bin/fRom ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/fRom
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/fRom
adb pull /system/etc/permissions/com.vzw.hardware.ehrpd.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/com.vzw.hardware.ehrpd.xml
adb pull /system/etc/permissions/com.vzw.hardware.lte.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/com.vzw.hardware.lte.xml
adb pull /system/etc/permissions/com.vzw.vzwapnlib.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/com.vzw.vzwapnlib.xml
adb pull /system/lib/libsecril-client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsecril-client.so
adb pull /system/lib/libsyncml_core.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsyncml_core.so
adb pull /system/lib/libsyncml_port.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsyncml_port.so
adb pull /system/lib/lib_gsd4t.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib_gsd4t.so
adb pull /system/vendor/bin/pvrsrvctl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvctl
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvctl
adb pull /system/vendor/etc/sirfgps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sirfgps.conf
adb pull /system/vendor/firmware/bcm4330.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bcm4330.hcd
adb pull /system/vendor/firmware/ducati-m3.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ducati-m3.bin
adb pull /system/vendor/firmware/libpn544_fw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpn544_fw.so
adb pull /system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/hw/gps.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.omap4.so
adb pull /system/vendor/lib/hw/gralloc.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.omap4.so
adb pull /system/vendor/lib/libglslcompiler.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libglslcompiler.so
adb pull /system/vendor/lib/libIMGegl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libIMGegl.so
adb pull /system/vendor/lib/libims.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libims.so
adb pull /system/vendor/lib/libims_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libims_jni.so
adb pull /system/vendor/lib/libinvensense_mpl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libinvensense_mpl.so
adb pull /system/vendor/lib/libpvr2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvr2d.so
adb pull /system/vendor/lib/libpvrANDROID_WSEGL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvrANDROID_WSEGL.so
adb pull /system/vendor/lib/libPVRScopeServices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libPVRScopeServices.so
adb pull /system/vendor/lib/libsec-ril_lte.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsec-ril_lte.so
adb pull /system/vendor/lib/libsrv_init.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_init.so
adb pull /system/vendor/lib/libsrv_um.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_um.so
adb pull /system/vendor/lib/libusc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libusc.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:obj/lib/libsecril-client.so

# All the blobs necessary for toro
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/fRom:system/bin/fRom \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsyncml_core.so:system/lib/libsyncml_core.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsyncml_port.so:system/lib/libsyncml_port.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lib_gsd4t.so:system/lib/lib_gsd4t.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pvrsrvctl:system/vendor/bin/pvrsrvctl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sirfgps.conf:system/vendor/etc/sirfgps.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gps.omap4.so:system/vendor/lib/hw/gps.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.omap4.so:system/vendor/lib/hw/gralloc.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libIMGegl.so:system/vendor/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libims.so:system/vendor/lib/libims.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libims_jni.so:system/vendor/lib/libims_jni.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libinvensense_mpl.so:system/vendor/lib/libinvensense_mpl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvr2d.so:system/vendor/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril_lte.so:system/vendor/lib/libsec-ril_lte.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_init.so:system/vendor/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_um.so:system/vendor/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libusc.so:system/vendor/lib/libusc.so

# All the apks necessary for toro
PRODUCT_PACKAGES += \\
    BIP \\
    IMSFramework \\
    RTN \\
    SDM \\
    SPG \\
    SyncMLSvc \\
    VZWAPNLib \\
    VZWAPNService

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),toro)
LOCAL_PATH:=\$(call my-dir)

# Module makefile rules for apks on toro

# BIP

include \$(CLEAR_VARS)

LOCAL_MODULE := BIP
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# IMSFramework

include \$(CLEAR_VARS)

LOCAL_MODULE := IMSFramework
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# RTN

include \$(CLEAR_VARS)

LOCAL_MODULE := RTN
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# SDM

include \$(CLEAR_VARS)

LOCAL_MODULE := SDM
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# SPG

include \$(CLEAR_VARS)

LOCAL_MODULE := SPG
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# SyncMLSvc

include \$(CLEAR_VARS)

LOCAL_MODULE := SyncMLSvc
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# VZWAPNLib

include \$(CLEAR_VARS)

LOCAL_MODULE := VZWAPNLib
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

# VZWAPNService

include \$(CLEAR_VARS)

LOCAL_MODULE := VZWAPNService
LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
include \$(BUILD_PREBUILT)

endif

EOF

./setup-makefiles.sh
