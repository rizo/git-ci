#!/bin/sh

function log() {
	echo "$(date -u +%Y-%m-%d_%TZ) kardan: $1"
}

# Test if $PROJECT_PATH is set, if not use current root dir.
# This script may be called by git post-receive hook in which case
# the $PROJECT_PATH will be exported to be used here.
if [ ! -d "$PROJECT_PATH" ]; then
	PROJECT_PATH=`dirname $0`/..
fi

# Prepare the build tree.
BUILD_PATH=$PROJECT_PATH/build
mkdir -p $BUILD_PATH/bin
mkdir -p $BUILD_PATH/lib
mkdir -p $BUILD_PATH/log

# Redirect stdout and stderr to logs.
TODAY=`date -u +"%Y-%m-%d"`
STDOUT_LOG="$BUILD_PATH/log/kardan-${TODAY}-stdout.log"
STDERR_LOG="$BUILD_PATH/log/kardan-${TODAY}-stderr.log"
log "stdout: $STDOUT_LOG"
log "stderr: $STDERR_LOG"
exec 1>> $STDOUT_LOG
exec 2>> $STDERR_LOG

log "building..."
START_TIME=`date +%s`
# =-=- BEGIN BUILD -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

sleep 3
# make -C $PROJECT_PATH help

# =-=- END BUILD -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
END_TIME=`date +%s`
log "build finished, took $((END_TIME - START_TIME)) seconds"
log "     < Your disgusting human food is ready, sir! >"
log "=^~^= ´"

exit 0

