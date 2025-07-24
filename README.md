# FPGA Signal-Processing Core for CERN Beam Wire-Scanner (RVDT / LVDT)

## Overview

The CERN Beam Instrumentation group uses variable-transformer sensors (RVDT for rotation, LVDT for translation) to track the fast motion of the beam wire-scanner. The legacy Resolver-to-Digital Converter (RDC) on the electronics board lacks flexibility and on-chip diagnostics, so this project moves the entire conversion and signal-conditioning chain into an FPGA soft-core. The IP generates the excitation waveform, demodulates the two secondary signals, computes angle / position and exposes real-time health flags.

## Key Features
**Quadrature (I/Q) demodulation** – chosen for its noise robustness and simple FPGA mapping. 

**Custom CIC low-pass/decimation filter** – multiplier-free, parameterisable R, N, M. 

**CORDIC angle calculation** – efficient atan2 (vector-translate) for 16-bit results. 

**Real-time error monitor** – detects clipping, loss-of-signal, amplitude mismatch & over-range, mirroring AD2S1210 semantics. 

**Self-contained VHDL core** – relies on licensed Quartus IP blocks (NCO, CORDIC, optionally FIR II) and is timing‑closed up to a 41.28 MHz system clock.

**SystemVerilog test-suite** – four automated benches (cic_tb, quadrature_demod_tb, error_tb, rdc_tb) with pass/fail output.

## Repository Layout
```css
Code/src/               -- VHDL core, packages and top-level
Code/src_tb/            -- Testbenches
Code/ip/                -- (optional) Intel/Altera IP generation outputs
Code/script/            -- .do scripts
docs/                   -- Report of this project (sorry, it's in French)
README.md
```

## Requirement
| Tool                     | Version (tested) | Purpose                             |
| ------------------------ | ---------------- | ----------------------------------- |
| **Quartus Prime**        | 23.1 std         | Synthesis / timing analysis         |
| **QuestaSim / ModelSim** | 2020.1           | Functional + gate-level simulation  |
| Python 3 (optional)      | ≥3.9             | Generates stimulus / plots          |

Some Quartus IP blocks used in this project (e.g., NCO, CORDIC, FIR II) require a full production license from Intel. Without it, you can only use them in evaluation mode, which may limit programming file generation or hardware use.

## Run Testbenches
Make sure your environment is set up and everything compiles before running these. To execute the simulations in batch (no GUI), add the -c flag to vsim.

### CIC Tests

```bash
cd Code/sim

# Run the tests for each signal
vsim -do "do ../script/cic.do all"

# test a clean signal
vsim -do "do ../script/cic.do clean"

# test a noisy signal
vsim -do "do ../script/cic.do noisy"
```

### Demodulation Tests

```bash
cd Code/sim

# Compile IP define if yo want to compile the IP library or not
# Run the tests for each signal
vsim -do "do ../script/demod.do all <angle> <compile IP>"

# test a clean signal
vsim -do "do ../script/demod.do clean <angle> <compile IP>"

# test a noisy signal
vsim -do "do ../script/demod.do noisy <angle> <compile IP>"
```

### RDC Tests

```bash
cd Code/sim

# Compile IP define if yo want to compile the IP library or not
# Run the tests for each signal
vsim -do "do ../script/rdc.do all <angle> <compile IP>"

# test a clean signal
vsim -do "do ../script/rdc.do clean <angle> <compile IP>"

# test a noisy signal
vsim -do "do ../script/rdc.do noisy <angle> <compile IP>"
```

### Error Tests
```bash
cd Code/sim

# Compile IP define if yo want to compile the IP library or not
# Run all the tests
vsim -do "do ../script/error.do <compile IP>"
```
\
Each test prints PASS / FAIL summaries to the console and produces timing waveforms and RMSE logs.

## Roadmap / Future Work
 - FIR compensation after the CIC to remove residual droop.

 - Generic compile-time mask for unused error bits to save logic.

 - Automatic LVDT linear-position block with RVDT/LVDT mode switch.

 - Memory optimisation of the NCO lookup table, optional licensed CIC Compiler IP.

 ## Acknowledgements
 Work carried out at HEIG-VD in collaboration with CERN. 
 Special thanks to Yann Thoma, Raoul Herzog, Yves Chevallier, and Jonathan Emery for their support and guidance.

