# Pipelined RISC-V CPU with L1 Cache

A learning project outlining a five-stage RV32I pipeline (IF, ID, EX, MEM, WB), forwarding, stalls, branch flushes, and a simple L1 cache.

## Contents
- `rtl/alu32.v`: starter combinational ALU.
- `docs/microarchitecture.md`: pipeline, hazard, and cache design notes.

## Milestones
1. Implement a documented RV32I subset.
2. Add pipeline registers and retirement trace.
3. Add forwarding, load-use stalls, and branch flushes.
4. Implement memory interface and cache controller.
5. Verify cache hit/miss behavior and measure CPI.
6. Add regression tests and synthesis/timing reports.

## Metrics
Publish retired instruction count, cycles, CPI, cache hit rate, stall causes, and FPGA resources only from reproducible runs. The included ALU is not a complete processor or cache.