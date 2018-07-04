#
## Makefile for Asus Live(g500TG)
#
#
# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := miui-8_Z00YD.zip

local-miui-modified-apps := InCallUI TeleService SecurityCenter 

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=
local-modified-jars := org.cyanogenmod.platform

# All apks from MIUI
local-miui-removed-apps := BugReport GameCenter FM Mipay XiaomiVip MiGameCenterSDKService MiLivetalk MiuiVoip SogouInput SystemAdSolution VoiceAssist XMPass YellowPage MiuiScanner 

# All apps need to be removed from original ZIP file
local-remove-apps   := 
 
 include phoneapps.mk

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

local-density := XHDPI

local-target-bit := 32

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions
include $(PORT_BUILD)/porting.mk

local-zip-misc:

local-test:

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	$(TOOLS_DIR)/post_process_props.py out/ZIP/system/build.prop other/build.prop
	@echo copying files!
	$(hide) cp -rf other/system $(ZIP_DIR)/
	@echo goodbye! miui prebuilt binaries!
	$(hide) rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	$(hide) cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
	@echo remove unnecessary files!
	$(hide) rm -rf $(ZIP_DIR)/system/etc/CHANGELOG-CM.txt
	$(hide) rm -rf $(ZIP_DIR)/system/recovery-from-boot.bak
	$(hide) rm -rf $(ZIP_DIR)/system/media/audio/*
	$(hide) rm -rf $(ZIP_DIR)/system/lib64/*
	@echo use only miui sounds!
	$(hide) cp -rf $(PORT_ROOT)/miui/system/media/$(local-density)/audio/* $(ZIP_DIR)/system/media/audio
	$(hide) rm -rf $(ZIP_DIR)/system/media/audio/create_symlink_for_audio-timestamp

