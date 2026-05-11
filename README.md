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
    True Nonlinear      Volterra / RTBM                        x(n) → input signal
      System               Model                               d(n) → true system output
        │                   │                                  y(n) → estimated model output
      d(n)                y(n)                                 e(n) → identification error
        └────────┬──────────┘
                 ▼
              Error e(n)
             
***

## Nonlinear System (g3)
             g3 = exp(0.5*x) .* ( sin(pi*x) + 0.3*sin(3*pi*x) + 0.1*sin(5*pi*x) 



# Volterra Filter
The Volterra filter approximates the nonlinear system using polynomial expansion:

<img width="421" height="37" alt="image" src="https://github.com/user-attachments/assets/881708d8-8843-4bbf-afad-89376296bfa7" />







              
