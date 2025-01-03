#!/bin/bash
# stop on error
set -e

# configurations
LOCAL_DIR=$1
REMOTE_USER=$2
REMOTE_HOST=$3
REMOTE_DIR=$4
PORT=22

echo "Tranferring files from ""$LOCAL_DIR to ""$REMOTE_USER@""$REMOTE_HOST:""$REMOTE_DIR..."

scp -P "$PORT" -r "$LOCAL_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

if [ $? -eq 0 ]; then
	echo "Files successfully transferred!"
else
	echi "File transfer fail!"
fi
