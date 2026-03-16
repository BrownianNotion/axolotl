#!/usr/bin/env bash
accelerate launch \
  --multi_gpu \
  --num_processes 8 \
  --num_machines 1 \
  --mixed_precision bf16 \
  --dynamo_backend no \
  -m axolotl.cli.train \
  configs/olmo2-sft.yml \
  --deepspeed configs/olmo2-sft-ds.json