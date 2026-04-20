#!/usr/bin/env bash

set -euo pipefail

if [[ "${EUID}" -ne 0 ]]; then
  echo "Please run as root: sudo ./scripts/install_ubuntu_prereqs.sh" >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y python3-pip python3-venv numactl

echo "Installed Python packaging prerequisites and numactl."
echo "Verified pip at: $(command -v pip3)"
echo "Verified venv module with: python3 -m venv --help"
echo "Verified numastat at: $(command -v numastat)"
