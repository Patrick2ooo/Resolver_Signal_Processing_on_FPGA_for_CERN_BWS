# CIC

```bash
cd Code/sim

# Run the tests for each signal
vsim -do "do ../script/cic.do all"

# test a clean signal
vsim -do "do ../script/cic.do clean"

# test a noisy signal
vsim -do "do ../script/cic.do noisy"
```

# Demodulation

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

# RDC

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

# Error
```bash
cd Code/sim

# Compile IP define if yo want to compile the IP library or not
# Run all the tests
vsim -do "do ../script/error.do <compile IP>"
```