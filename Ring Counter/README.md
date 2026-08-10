Ring Counter – Verilog

📌 Project Description

A Ring Counter is a type of shift register in which the output of the last flip-flop is connected back to the input of the first flip-flop. It circulates a single "1" (or "0") through the register on every clock pulse.

This project implements a 4-bit Ring Counter using Verilog HDL. A reset signal initializes the counter, and the stored bit shifts circularly with every rising edge of the clock.

🎯 Objectives

- Design a 4-bit Ring Counter using Verilog HDL.
- Understand the working of shift registers.
- Implement circular data shifting.
- Verify the design using a Verilog testbench.
- Observe the counter operation through simulation.

⚙️ Working Principle

For a 4-bit Ring Counter, the initial state is:

"0001"

On every positive edge of the clock, the "1" moves to the next position:

0001 → 0010 → 0100 → 1000 → 0001 → ...

Thus, the counter continuously circulates the single "1" through all four flip-flops.

🧰 Tools Required

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave (for viewing waveforms)
- VS Code
- GitHub

📁 Project Structure

ring-counter/
│
├── README.md
├── ring_counter.v
├── ring_counter_tb.v
└── simulation_output.vcd

💻 Verilog Design

The design consists of a 4-bit register. During reset, the register is initialized to "0001". For every positive clock edge, the bit pattern is rotated.

🧪 Testbench

The testbench generates the clock and reset signals and observes the output of the Ring Counter for several clock cycles.

📊 Expected Output

Clock Cycle| Counter Output
Reset| 0001
1| 0010
2| 0100
3| 1000
4| 0001
5| 0010

✅ Applications

Ring Counters are commonly used in:

- Sequence generation
- Digital control circuits
- Timing circuits
- Frequency division
- LED pattern generation
- Digital systems and FPGA applications

📝 Conclusion

The 4-bit Ring Counter was successfully designed and verified using Verilog HDL. The simulation demonstrates the circular movement of a single "1" through the four-bit register on each clock pulse.

Author 

Sravanthi 