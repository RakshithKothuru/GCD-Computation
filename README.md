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

- ## 📌 File Structure
📂 GCD_Computation  
 ┣ 📜 datapath.v → Verilog code for the Datapath  
 ┣ 📜 controller.v → Verilog code for the Controller  
 ┣ 📜 MUX.v → Verilog code for 16-bit multiplexer 
 ┣ 📜 sub.v → Verilog code for 16-bit subraction
 ┣ 📜 comp.v → Verilog code for 16-bit comparator
 ┣ 📜 PIPO.v → Verilog code for 16-bit register
 ┣ 📜 test_tb.v → Testbench for verification  
 ┣ 📂 images → Contains block diagram and flowchart  
 ┗ 📜 README.md → Project documentation  

