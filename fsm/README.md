# Finite State Machines (FSM)

This folder contains Verilog implementations of different types of Finite State Machines (FSM).

## Included Designs

### 🔹 Mealy State Machine
In a Mealy Machine, the output depends on:
- Present State
- Current Input

The output can change immediately when the input changes.

---

### 🔹 Moore State Machine
In a Moore Machine, the output depends only on:
- Present State

The output changes only when the state changes.

---

### 🔹 Traffic Light Controller
This project implements a Traffic Light Controller using FSM concepts.

It controls signal transitions:
- Red
- Yellow
- Green

Based on clock cycles and defined state transitions.

---

## Features
- Clock-driven synchronous design
- State transition logic
- Reset functionality
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
