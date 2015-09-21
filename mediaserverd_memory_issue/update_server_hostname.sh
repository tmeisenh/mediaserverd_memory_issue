LOCAL_HOSTNAME=`hostname`
LOCAL_URL="http://$LOCAL_HOSTNAME:8000"
SETTINGS_PLIST_FILE="mediaserverd_memory_issue/ServerSettings.plist"
COMMAND="Set :ServerURL $LOCAL_URL"
/usr/libexec/PlistBuddy -c "$COMMAND" $SETTINGS_PLIST_FILE
