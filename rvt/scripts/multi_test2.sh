#!/bin/bash

MODEL_FOLDER="/home/xiesicheng/chd/RVT/rvt/runs/rvt2/20250308_083942"
EVAL_DATA="./data/test"


for step in $(seq 104 5 144)
do
    echo "=================================================================="
    echo "testing model at step: ${step}"
    echo "=================================================================="
    
    MODEL_FILE="${MODEL_FOLDER}/model_${step}.pth"
    if [ ! -f "$MODEL_FILE" ]; then
        echo "${MODEL_FILE} not exists"
        continue
    fi

    CUDA_VISIBLE_DEVICES=7 python eval.py \
        --model-folder "$MODEL_FOLDER" \
        --eval-datafolder "$EVAL_DATA" \
        --tasks all \
        --eval-episodes 25 \
        --log-name log \
        --device 0 \
        --headless \
        --model-name model_${step}.pth

    sleep 10
done

echo "Finished!"