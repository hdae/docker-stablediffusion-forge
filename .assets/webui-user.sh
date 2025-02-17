#!/bin/bash

# このファイルはlllyasviel/stable-diffusion-webui-forge より引用しています。
# ライセンスについては https://github.com/lllyasviel/stable-diffusion-webui-forge/blob/main/LICENSE.txt を参照してください。
# コピー元がAGPLライセンスでの配布のため、このファイルだけAGPLという扱いになります。

#########################################################
# Uncomment and change the variables below to your need:#
#########################################################

# Install directory without trailing slash
install_dir="/home/ubuntu"

# Name of the subdirectory
clone_dir="forge"

# Commandline arguments for webui.py, for example: export COMMANDLINE_ARGS="--medvram --opt-split-attention"
# ! この --server-name 0.0.0.0 は削除しないでください。
# ! 変更が必要な場合は追記してください。
export COMMANDLINE_ARGS="--server-name 0.0.0.0 "

# python3 executable
#python_cmd="python"

# git executable
#export GIT="git"

# python3 venv without trailing slash (defaults to ${install_dir}/${clone_dir}/venv)
#venv_dir="venv"

# script to launch to start the app
#export LAUNCH_SCRIPT="launch.py"

# install command for torch
#export TORCH_COMMAND="pip install torch==1.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113"

# Requirements file to use for stable-diffusion-webui
#export REQS_FILE="requirements_versions.txt"

# Fixed git repos
#export K_DIFFUSION_PACKAGE=""
#export GFPGAN_PACKAGE=""

# Fixed git commits
#export STABLE_DIFFUSION_COMMIT_HASH=""
#export CODEFORMER_COMMIT_HASH=""
#export BLIP_COMMIT_HASH=""

# Uncomment to enable accelerated launch
#export ACCELERATE="True"

# Uncomment to disable TCMalloc
#export NO_TCMALLOC="True"

###########################################
