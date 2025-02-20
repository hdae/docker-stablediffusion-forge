#!/bin/bash

# User config
chown -R ubuntu:ubuntu /home/ubuntu/forge/config.json
chown -R ubuntu:ubuntu /home/ubuntu/forge/ui-config.json

# User data
chown -R ubuntu:ubuntu /home/ubuntu/forge/extensions
chown -R ubuntu:ubuntu /home/ubuntu/forge/outputs

# Volumes
chown -R ubuntu:ubuntu /home/ubuntu/forge/venv
chown -R ubuntu:ubuntu /home/ubuntu/forge/repositories

exec gosu ubuntu "$@"
