# Shift Registers

This folder contains Verilog implementations of different types of shift registers.

## Included Designs

### 🔹 SISO (Serial In Serial Out)
Data is shifted in serially and taken out serially, one bit per clock cycle.

---

### 🔹 SIPO (Serial In Parallel Out)
Data is shifted in serially and available in parallel form at the output.

---

### 🔹 PISO (Parallel In Serial Out)
Parallel data is loaded and shifted out serially.

---

### 🔹 PIPO (Parallel In Parallel Out)
Parallel data is loaded and read in parallel form.

---

### 🔹 Basic Shift Register
Standard shift register implementation with left or right shift operation.

---

### 🔹 Universal Shift Register
A flexible shift register that supports:
- Shift Left
- Shift Right
- Parallel Load
- Hold Operation

Controlled using select lines.

---

## Features
- Clock-driven synchronous design
- Reset functionality
- Serial and Parallel data operations
- Simulation and Synthesis verified

---

## Files Included
Each project contains:
- Verilog Design File (.v)
- Testbench File
- Simulation Output
- Synthesis Output

---

Tool Used:
- Xilinx Vivado
