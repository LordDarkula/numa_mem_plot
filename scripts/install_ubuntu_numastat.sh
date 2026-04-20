#!/usr/bin/env bash

set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "Please run as root: sudo ./scripts/install_ubuntu_numastat.sh" >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y numactl

echo "Installed numactl package."
echo "Verified numastat at: $(command -v numastat)"
