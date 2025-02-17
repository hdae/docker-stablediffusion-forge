#!/bin/bash

# User config
chown -R 1000:1000 /home/ubuntu/forge/config.json
chown -R 1000:1000 /home/ubuntu/forge/ui-config.json

# User data
chown -R 1000:1000 /home/ubuntu/forge/extensions
chown -R 1000:1000 /home/ubuntu/forge/outputs

# Volumes
chown -R 1000:1000 /home/ubuntu/forge/venv
chown -R 1000:1000 /home/ubuntu/forge/repositories

exec gosu ubuntu "$@"
