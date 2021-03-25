#!/usr/bin/env bash
set -euo pipefail

trap ctrl_c INT

function ctrl_c() {
	echo
	echo "Exiting..."
	exit 1
}

git fetch upstream
git merge upstream/master
