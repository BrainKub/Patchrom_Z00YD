import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ifelse(is_mounted("/data"), unmount("/data"));
ui_print("Android 6.0.1-----------------------------");
ui_print("| 88   88 888888  88  88  888888   8888  |");
ui_print("| 888 888   88    88  88    88    88  88 |");
ui_print("| 88 8 88   88    88  88    88     8888  |");
ui_print("| 88   88   88    88  88    88    88  88 |");
ui_print("| 88   88 888888   8888   888888   8888  |");
ui_print("----------------------------------BrainKub");\n''' + edify.script[0]

def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)
