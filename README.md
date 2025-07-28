# 🔢 GCD Computation Unit Using Datapath and Controller

## 📌 Project Overview

This repository contains the RTL design and simulation of a **16-bit GCD (Greatest Common Divisor) Computation Unit** using the **Euclidean Algorithm**. The design is implemented using a clean **datapath + controller architecture**, which separates computation logic from control flow, a technique common in digital system design.

---

## 🛠️ Technologies Used

- ✅ Verilog HDL
- ✅ Icarus Verilog (for simulation)
- ✅ GTKWave (for waveform visualization)
- ✅ VS Code (for development)

---

## ⚙️ Architecture

The design follows a **controller-datapath model**:

### 🧮 Datapath Unit
- Performs the core computation using:
  - **Subtractor**
  - **Comparator**
  - **MUXes**
  - **PIPO (Parallel-In Parallel-Out) Registers**
- Operates on two 16-bit operands (`A`, `B`) to iteratively compute `GCD(A, B)`.

### 🧠 Controller Unit
- FSM-based controller that:
  - Issues control signals to the datapath
  - Manages operation sequencing (load, compare, subtract, done)
  - Asserts a `done` signal once the result is ready

---

## 📌 File Structure  
📂 GCD_Computation  
 ┣ 📜 datapath.v  → Verilog code for the Datapath  
 ┣ 📜 controller.v  → Verilog code for the Controller  
 ┣ 📜 mux.v  → Verilog code for 16-bit Multiplexer  
 ┣ 📜 sub.v  → Verilog code for 16-bit Subtraction  
 ┣ 📜 comp.v  → Verilog code for 16-bit Comparator  
 ┣ 📜 pipo.v  → Verilog code for 16-bit Register (Parallel-In Parallel-Out)  
 ┣ 📜 test_tb.v  → Testbench for verification  
 ┗ 📜 README.md  → Project documentation  

 ---

## 📌 Features

- ✅ Implements **Euclidean algorithm** for efficient GCD computation
- ✅ Designed as a **16-bit digital hardware block**
- ✅ Clean **separation of datapath and control logic**
- ✅ Fully verified through **testbench-based simulation**

---

## ✅ Functional Overview

1. **Start Signal** begins computation.
2. Datapath loads input values into registers.
3. Controller compares values and subtracts the smaller from the larger.
4. Steps repeat until both values are equal.
5. Final result is the **GCD**, asserted with a `done` flag.

---

## 🔗 References

- [Digital Design: Principles and Practices — John F. Wakerly](https://www.pearson.com/en-us/subject-catalog/p/digital-design-principles-and-practices/P200000000733)
- Euclidean Algorithm: [Wikipedia](https://en.wikipedia.org/wiki/Euclidean_algorithm)

