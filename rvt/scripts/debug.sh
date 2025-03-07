#!/usr/bin/bash
CUDA_LAUNCH_BLOCKING=1 CUDA_VISIBLE_DEVICES=1 \
python3 -m debugpy --listen 40279 --wait-for-client train.py \
--exp_cfg_path configs/rvt2.yaml \
--mvt_cfg_path mvt/configs/rvt2.yaml \
--device 0