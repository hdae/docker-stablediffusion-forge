#!/bin/bash

chown -R 1000:1000 /home/ubuntu/forge/embeddings
chown -R 1000:1000 /home/ubuntu/forge/extensions
chown -R 1000:1000 /home/ubuntu/forge/models
chown -R 1000:1000 /home/ubuntu/forge/output
chown -R 1000:1000 /home/ubuntu/forge/webui-user.sh
chown -R 1000:1000 /home/ubuntu/forge/venv
chown -R 1000:1000 /home/ubuntu/forge/repositories

exec gosu ubuntu "$@"
