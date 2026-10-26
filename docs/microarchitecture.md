# Microarchitecture specification (starter)

## Pipeline stages
- IF: fetch instruction and handle redirects.
- ID: decode, read registers, generate immediates.
- EX: ALU, branch comparison, effective address.
- MEM: load/store or cache request.
- WB: commit register result.

## Hazard policy
Forward EX/MEM and MEM/WB results where legal. Stall when a load result is unavailable to the dependent instruction. Flush younger instructions after a taken branch/jump. Define priority among reset, exception, stall, and redirect.

## L1 cache contract
Define address split (tag/index/offset), line size, capacity, write policy, allocation policy, and miss response. A blocking cache may hold the pipeline until refill completes. Verify back-to-back hits, cold misses, and conflict misses.

## Validation
Use small assembly programs with known register/memory results, compare retirement traces with a reference model, and compute CPI as cycles divided by retired instructions.
