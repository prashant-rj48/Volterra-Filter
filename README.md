# Volterra-RTBM-Nonlinear-System-
Robust nonlinear system identification using Volterra filters and Recursive Tukey’s Biweight M-estimation (RTBM).
The project models nonlinear systems, introduces impulsive spike noise, and compares the performance of conventional Volterra filtering with robust RTBM-based Volterra filtering.

***

# Features
Nonlinear system modeling using Volterra polynomial expansion.

Implementation of Recursive Tukey’s Biweight M-estimation (RTBM).

Robust system identification under impulsive spike noise.

Error analysis using Mean Absolute Error (MAE).

Visualization of:-   True nonlinear system, Volterra approximation,  RTBM approximation, Spike effects on filtering performance.

***
## System Identification

  x(n)
                 │
        ┌────────┴────────┐
        │                 │
   True Nonlinear      Volterra / RTBM
      System               Model
        │                   │
      d(n)                y(n)
        └────────┬──────────┘
                 ▼
              Error e(n)
             


              
