# GCD Computation Using Datapath and Controller

## 📌 Project Overview
This project implements a **16-bit GCD Computation Unit** using the **Euclidean Algorithm** in **Verilog HDL**.  
It consists of:
- A **Datapath Unit** to perform computations.
- A **Controller Unit** to manage the control signals.  

## 📌 Technologies Used
✅ Designed using **Verilog HDL**  
✅ Simulated using **Icarus Verilog (iverilog) & GTKWave**  
✅ Developed in **VS Code**  

## 📌 Features
- Uses **Euclidean Algorithm** for efficient GCD computation.
- Implemented as a **16-bit digital circuit**.
- Separate **Datapath and Controller** architecture.
- Fully verified through simulation.

## 📌 File Structure  
📂 GCD_Computation  
 ┣ 📜 datapath.v  → Verilog code for the Datapath  
 ┣ 📜 controller.v  → Verilog code for the Controller  
 ┣ 📜 MUX.v  → Verilog code for 16-bit Multiplexer  
 ┣ 📜 sub.v  → Verilog code for 16-bit Subtraction  
 ┣ 📜 comp.v  → Verilog code for 16-bit Comparator  
 ┣ 📜 PIPO.v  → Verilog code for 16-bit Register (Parallel-In Parallel-Out)  
 ┣ 📜 test_tb.v  → Testbench for verification  
 ┗ 📜 README.md  → Project documentation  
