# Tested with 2  GPUs
set -x

export TZ=Asia/Shanghai
DATE_STR=$(date +"%Y%m%d")
TIME_STR=$(date +"%H%M%S")
LOG_PATH="/home/fit/wanghn/WORK/tianr/trace/$DATE_STR"
mkdir -p "$LOG_PATH"

torchrun --standalone --nnodes=1 --nproc_per_node=2 -m verl.trainer.fsdp_lean 2>&1 | tee $LOG_PATH/train_$TIME_STR.log