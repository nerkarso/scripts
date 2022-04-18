# !/bin/bash

## Usage
# chmod +x uninstall-miui-apps.sh
# ./uninstall-miui-apps.sh

## Requirements
# - adb

## Instructions
# - Before running this script, see the list of installed apps by running:
#   adb shell pm list packages

echo "Uninstalling apps..."

adb shell pm uninstall -k --user 0 com.android.browser
adb shell pm uninstall -k --user 0 com.google.android.apps.turbo
adb shell pm uninstall -k --user 0 com.google.android.marvin.talkback
adb shell pm uninstall -k --user 0 com.google.android.projection.gearhead
adb shell pm uninstall -k --user 0 com.google.ar.core
adb shell pm uninstall -k --user 0 com.google.ar.lens
adb shell pm uninstall -k --user 0 com.mi.android.globalminusscreen
adb shell pm uninstall -k --user 0 com.miui.fm
adb shell pm uninstall -k --user 0 com.miui.fmservice
adb shell pm uninstall -k --user 0 com.google.android.feedback
adb shell pm uninstall -k --user 0 com.xiaomi.calendar
adb shell pm uninstall -k --user 0 com.miui.calculator
adb shell pm uninstall -k --user 0 com.android.deskclock
adb shell pm uninstall -k --user 0 com.miui.compass
adb shell pm uninstall -k --user 0 com.miui.android.fashiongallery
adb shell pm uninstall -k --user 0 com.xiaomi.midrop
