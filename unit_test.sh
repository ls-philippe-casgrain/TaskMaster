#!/usr/bin/env bash

# Exit on error
set -e

# Customize the name as required
EXECUTABLE_NAME="TaskMaster"
RESULTS_NAME="results.xml"

# The script will need the full path of this folder, so we'll store it
SCRIPT_PATH=`cd \`dirname $0\`; pwd`
RESULTS_TEMPORARY_FILE="/tmp/$RESULTS_NAME"
RESULTS_FINAL_FILE="$SCRIPT_PATH/$RESULTS_NAME"

# Clean up the build results in case they exist
rm -rf "$RESULTS_FINAL_FILE" || true
rm -rf "$RESULTS_TEMPORARY_FILE" || true

echo "Running tests for $EXECUTABLE_NAME..."

# Launch the application in Unit Test mode
"$SCRIPT_PATH/$EXECUTABLE_NAME.app/Contents/MacOS/$EXECUTABLE_NAME" --runUnitTests "$RESULTS_TEMPORARY_FILE"

echo "Capturing results file at $RESULTS_FINAL_FILE"
cp "$RESULTS_TEMPORARY_FILE" "$RESULTS_FINAL_FILE"

echo "Test run complete."

exit 0
