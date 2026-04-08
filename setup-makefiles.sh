#!/bin/bash
# Copyright (C) 2018 The LineageOS Project

set -e

DEVICE=cappu
VENDOR=xiaomi

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../..

HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT"

# Copyright headers and guards
write_headers "$DEVICE"

# The standard blobs
write_makefiles "$MY_DIR"/proprietary-files.txt

# VNDK compat layer
#write_makefiles "$MY_DIR"/proprietary-files-vndk.txt

# vendor blobs
write_makefiles "$MY_DIR"/proprietary-files-vendor.txt

# We are done!
write_footers
