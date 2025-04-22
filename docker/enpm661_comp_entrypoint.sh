#!/bin/bash
set -e

# setup ros stack environment
source "/home/docker_user/comp_ws/install/setup.bash"

exec "$@"
