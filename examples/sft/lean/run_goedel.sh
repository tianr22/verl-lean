# Tested with 4 GPUs
set -x
export CUDA_VISIBLE_DEVICES=3,4,5,6
torchrun --standalone --nnodes=1 --nproc_per_node=4 -m verl.trainer.fsdp_lean 2>&1 | tee train.log