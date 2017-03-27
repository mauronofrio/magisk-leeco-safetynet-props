#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

/data/magisk/resetprop ro.boot.verifiedbootstate green
/data/magisk/resetprop ro.boot.veritymode enforcing

# https://forum.xda-developers.com/showpost.php?p=70831797&postcount=3665
/data/magisk/resetprop ro.build.description "gemini-user 6.0.1 MXB48T V8.1.2.0.MAAMIDI release-keys"
/data/magisk/resetprop ro.build.fingerprint "Xiaomi/gemini/gemini:6.0.1/MXB48T/V8.1.2.0.MAAMIDI:user/release-keys"

/data/magisk/resetprop ro.bootimage.build.fingerprint "Xiaomi/gemini/gemini:6.0.1/MXB48T/V8.1.2.0.MAAMIDI:user/release-keys"

/data/magisk/resetprop selinux.reload_policy 1

# https://www.reddit.com/r/pokemongodev/comments/58gnq3/root_bypass_the_new_update_leads_repost/
# /data/magisk/resetprop ro.build.selinux 0

# https://forum.xda-developers.com/showpost.php?p=71154562&postcount=4
/data/magisk/resetprop ro.debuggable 0
/data/magisk/resetprop ro.secure 1
/data/magisk/resetprop ro.build.type user
/data/magisk/resetprop ro.build.tags release-keys

# https://github.com/topjohnwu/MagiskManager/issues/112#issuecomment-280993699
sh /magisk/.core/magiskhide/enable