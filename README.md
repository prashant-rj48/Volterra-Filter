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
  <img width="552" height="43" alt="image" src="https://github.com/user-attachments/assets/c14023fc-b684-429c-ba17-46247780e584" />
      <img width="327" height="82" alt="Screenshot 2026-05-11 163458" src="https://github.com/user-attachments/assets/31c622c2-bd72-4646-8402-703e21fc7df3" />




# Volterra Filter
The Volterra filter approximates the nonlinear system using polynomial expansion:

<img width="421" height="37" alt="image" src="https://github.com/user-attachments/assets/881708d8-8843-4bbf-afad-89376296bfa7" />







              
