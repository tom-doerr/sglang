#!/bin/bash
# Start Qwen3-VL-30B-A3B FP8 server with SGLang
docker run -d --gpus all --name sglang-qwen3vl-30b \
  --shm-size 4g -p 30000:30000 \
  -v ~/.cache/huggingface:/root/.cache/huggingface \
  -e TORCH_CUDNN_V8_API_DISABLED=1 \
  nvcr.io/nvidia/sglang:25.11-py3 \
  python -m sglang.launch_server \
  --model-path Qwen/Qwen3-VL-30B-A3B-Instruct-FP8 \
  --host 0.0.0.0 --port 30000 \
  --mem-fraction-static 0.5 \
  --mm-attention-backend triton_attn \
  --enable-mixed-chunk
