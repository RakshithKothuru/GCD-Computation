# GCD Computation Using Datapath and Controller

## 📌 Project Overview  
This project implements a **16-bit GCD computation unit** using the **Euclidean Algorithm** in **Verilog HDL**. It consists of:  
✅ **Datapath** – Performs the arithmetic operations and data movement.  
✅ **Controller** – Generates control signals to manage the datapath operations.

The design is verified using **Icarus Verilog**, simulated in **GTKWave**, and coded in **VS Code**.

---

## 🔧 **How It Works**  
The **Euclidean Algorithm** computes the GCD of two numbers **A** and **B** using subtraction:  
1. If `A == B`, GCD is `A`.  
2. If `A > B`, subtract `B` from `A` (`A = A - B`).  
3. If `B > A`, subtract `A` from `B` (`B = B - A`).  
4. Repeat until `A == B`.  

This logic is implemented in **hardware** using a **datapath and controller** structure.  

---

## 📜 **Project Structure**

[GCD Block Diagram](https://github.com/RakshithKothuru/GCD-Computation/blob/main/Datapaths-of-GCD-processor.png?raw=true)
