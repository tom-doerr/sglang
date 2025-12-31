# SGLang GB10 Fork

## Branches
| Branch | Purpose |
|--------|---------|
| `gb10` | Combined fixes for local use |
| `spark` | PR #15984 (mRoPE fix) |
| `fix-cu-seqlens-sync` | PR #16104 (cache fix) |

## Install on Other Machines
```bash
pip install git+https://github.com/tom-doerr/sglang.git@gb10#subdirectory=python
```

## GB10 Fixes Included
- cu_seqlens GPU→CPU sync fix (70x speedup)
- mRoPE position_ids shape fix
- Triton kernel re-enabled
- FA3 import conditional for Blackwell

## Qwen3-VL-30B Server
```bash
./start-qwen3vl-30b.sh
```
Flags: `--enable-mixed-chunk --mm-attention-backend triton_attn`
