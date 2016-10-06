#!/usr/bin/env bash

# Exit on error
set -e

# Customize the name as required
PROJECT_NAME="TaskMaster.xojo_project"
APP_NAME="TaskMaster.app"
XOJO_FULL_PATH="/Applications/Xojo_2016_Release_3/Xojo.app"

# The script will need the full path of this folder, so we'll store it
SCRIPT_PATH=`cd \`dirname $0\`; pwd`
IDE_SOCKET="/tmp/XojoIDE"

# Clean up the build results in case they exist
rm -rf "$SCRIPT_PATH/$APP_NAME" || true

# Launch Xojo / bring it to the front
osascript -e "launch application \"$XOJO_FULL_PATH\""

# Wait for the IDE socket to appear, which will
# indicate that the IDE is ready to receive commands
while : ; do
    [[ -e "$IDE_SOCKET" ]] && break
    echo "Waiting for the IDE to launch..."
    sleep 1
done

# Create the build script that we'll send to the IDE
# We can use variable subsitution here to customize the script
BUILD_SCRIPT=$(cat <<EOF
OpenFile("/$SCRIPT_PATH/$PROJECT_NAME")\n
DoCommand "BuildApp"\n
QuitIDE(false)
EOF
)

# Send the script to the IDE's socket
# echo -e will echo the linefeeds ('\n') from the script above
# nc -U will 'netconnect' to a Unix Domain socket
echo -e $BUILD_SCRIPT | nc -U "$IDE_SOCKET"

echo "Building $APP_NAME from project $PROJECT_NAME"

# Since the script tells the IDE to Quit,
# wait until the process disappears
while pgrep Xojo > /dev/null; do sleep 1; done

echo "Completed build of $SCRIPT_PATH/$APP_NAME"

exit 0

