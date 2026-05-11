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





***

# Volterra Filter
The Volterra filter approximates the nonlinear system using polynomial expansion:

<img width="421" height="37" alt="image" src="https://github.com/user-attachments/assets/881708d8-8843-4bbf-afad-89376296bfa7" />

The filter minimizes Mean Squared Error (MSE):-                  J=∑(d−y)^2

Limitation:-       e^2 ≫ 1


## Applyed Volterra on g3 

### Order = 6

<img width="1566" height="276" alt="image" src="https://github.com/user-attachments/assets/68e998b2-fe5c-4c87-a8a3-d7fd8f11ede7" />

### Order = 15 

<img width="618" height="491" alt="image" src="https://github.com/user-attachments/assets/d88b766c-1e0d-4ebb-bd5d-f148278d0412" />





***

# Recursive Tukey’s Biweight M-estimation (RTBM) 

RTBM introduces robust weighting using Tukey’s biweight function

<img width="367" height="87" alt="image" src="https://github.com/user-attachments/assets/82a1e45f-ca88-4e43-be21-507ad29145b4" />

Small errors → normal learning
Large spike errors → ignored



## Now we add some spikes in g3 and calculate Error

<img width="612" height="492" alt="image" src="https://github.com/user-attachments/assets/ab30e4be-43ba-4cb9-8cc1-dfe6a591bc99" />

 ## Error :- 

<img width="242" height="77" alt="image" src="https://github.com/user-attachments/assets/15215ad1-d91a-431a-b796-1ff6856a39ab" />


## Error Calculation:-            

The Mean Absolute Error (MAE) is computed as:

<img width="252" height="63" alt="image" src="https://github.com/user-attachments/assets/16a8834b-73ba-4d71-95cc-84ea0062961e" />



              
