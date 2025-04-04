#!/bin/bash
# Copyright Broadcom, Inc. All Rights Reserved.
# SPDX-License-Identifier: APACHE-2.0

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace # Uncomment this line for debugging purposes

# Load libraries
. /opt/bitnami/scripts/libbitnami.sh
. /opt/bitnami/scripts/liblog.sh

# Load ClickHouse Keeper environment variables
. /opt/bitnami/scripts/clickhouse-keeper-env.sh

print_welcome_page

if [[ "$1" = "/opt/bitnami/scripts/clickhouse-keeper/run.sh" ]]; then
    info "** Starting ClickHouse Keeper setup **"
    /opt/bitnami/scripts/clickhouse-keeper/setup.sh
    info "** ClickHouse Keeper setup finished! **"
fi

echo ""
exec "$@"
