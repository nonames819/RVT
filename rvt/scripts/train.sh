#!/usr/bin/bash

#CUDA_LAUNCH_BLOCKING=1 
CUDA_VISIBLE_DEVICES=1,2,3,4,5,6 python train.py

# CUDA_LAUNCH_BLOCKING=1 CUDA_VISIABLE_DEVICES=1,2,3,4,5,6,7 python train.py \
#     --exp_cfg_path configs/rvt2.yaml \
#     --mvt_cfg_path mvt/configs/rvt2.yaml \
#     --device 0,1,2,3,4,5,6

# CUDA_VISIBLE_DEVICES=1,2,3,4,5,6,7 python train.py \
#     --exp_cfg_path configs/rvt2.yaml \
#     --mvt_cfg_path mvt/configs/rvt2.yaml \
#     --device 0,1,2,3,4,5,6
