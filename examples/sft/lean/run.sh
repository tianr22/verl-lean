# Tested with 2  GPUs
set -x
torchrun --standalone --nnodes=1 --nproc_per_node=4 -m verl.trainer.fsdp_lean 2>&1 | tee train.log