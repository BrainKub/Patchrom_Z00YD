#
## Makefile for Asus Live(g500TG)
#
#
# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := miui-8_Z00YD.zip

local-miui-modified-apps :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

# All apks from MIUI
local-miui-removed-apps :=

# All apps need to be removed from original ZIP file
local-phone-apps :=

local-phone-priv-apps :=

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc

local-density := XHDPI

local-target-bit := 32

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions
include $(PORT_BUILD)/porting.mk

local-zip-misc:

local-test:
