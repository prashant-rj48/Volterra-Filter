% clc
% clear
% close all
% 
% x = linspace(-0.5,0.5,1000);
% 
% %%-------- g1 --------%
% 
% gamma = 2;
% q = 1.5*x - 0.3*x.^2;
% 
% rho = ones(size(x))*0.5;
% rho(q>0)=4;
% 
% g1 = gamma*(1./(1+exp(-rho.*q)) - 0.5);
% 
% %Volterra approximation (2nd order)
% 
% v1 = 1.5*x - 0.3*x.^2;
% 
% %%-------- g2 --------
% 
% zeta = 0.1;
% g2 = zeros(size(x));
% 
% for i=1:length(x)
% 
%     if abs(x(i)) < zeta
%         g2(i) = (2/3)*x(i);
% 
%     elseif abs(x(i)) < 2*zeta
%         g2(i) = sign(x(i))*(3-(2-abs(x(i))/zeta)^2)/3;
% 
%     else
%         g2(i) = sign(x(i));
%     end
% 
% end
% 
% % Volterra approximation
% 
% v2 = (2/3)*x - (x.^2);
% 
% %%-------- g3 --------
% 
% g3 = exp(0.5*x).*(sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x));
% 
% %%Volterra approximation (3rd order)
% 
% v3 = x - (x.^3)/6;
% 
% %%-------- plots --------
% 
% figure
% 
% subplot(3,1,1)
% plot(x,g1,'b','LineWidth',2)
% hold on
% plot(x,v1,'r--','LineWidth',2)
% grid on
% title('g1 vs Volterra')
% legend('True g1','Volterra')
% 
% subplot(3,1,2)
% plot(x,g2,'b','LineWidth',2)
% hold on
% plot(x,v2,'r--','LineWidth',2)
% grid on
% title('g2 vs Volterra')
% legend('True g2','Volterra')
% 
% subplot(3,1,3)
% plot(x,g3,'b','LineWidth',2)
% hold on
% plot(x,v3,'r--','LineWidth',2)
% grid on
% title('g3 vs Volterra')
% legend('True g3','Volterra')
% 
% 
% 
% 















% 
% 
% 
% 
% 
% clc
% clear
% close all
% 
% x = linspace(-0.5,0.5,1000)';
% 
% %% TRUE SYSTEMS
% 
% gamma = 2;
% q = 1.5*x - 0.3*x.^2;
% 
% rho = ones(size(x))*0.5;
% rho(q>0)=4;
% 
% g1 = gamma*(1./(1+exp(-rho.*q)) - 0.5);
% 
% zeta = 0.1;
% g2 = zeros(size(x));
% 
% for i=1:length(x)
% 
%     if abs(x(i)) < zeta
%         g2(i) = (2/3)*x(i);
% 
%     elseif abs(x(i)) < 2*zeta
%         g2(i) = sign(x(i))*(3-(2-abs(x(i))/zeta)^2)/3;
% 
%     else
%         g2(i) = sign(x(i));
%     end
% 
% end
% 
% g3 = exp(0.5*x).*(sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x));
% 
% %% VOLTERRA MODEL (6th order)
% 
% Phi = [x x.^2 x.^3 x.^4 x.^5 x.^6];
% 
% %% Estimate coefficients using least squares
% 
% w1 = Phi\g1;
% w2 = Phi\g2;
% w3 = Phi\g3;
% 
% v1 = Phi*w1;
% v2 = Phi*w2;
% v3 = Phi*w3;
% 
% %% PLOTS
% 
% figure
% 
% subplot(3,1,1)
% plot(x,g1,'b','LineWidth',2)
% hold on
% plot(x,v1,'r--','LineWidth',2)
% grid on
% title('g1 vs Volterra (6th order)')
% legend('True g1','Volterra')
% 
% subplot(3,1,2)
% plot(x,g2,'b','LineWidth',2)
% hold on
% plot(x,v2,'r--','LineWidth',2)
% grid on
% title('g2 vs Volterra (6th order)')
% legend('True g2','Volterra')
% 
% subplot(3,1,3)
% plot(x,g3,'b','LineWidth',2)
% hold on
% plot(x,v3,'r--','LineWidth',2)
% grid on
% title('g3 vs Volterra (6th order)')
% legend('True g3','Volterra')
% 


% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 



% 
% clc
% clear
% close all
% 
% x = linspace(-0.5,0.5,1000)';
% 
% %% TRUE SYSTEMS
% 
% gamma = 2;
% q = 1.5*x - 0.3*x.^2;
% 
% rho = ones(size(x))*0.5;
% rho(q>0)=4;
% 
% g1 = gamma*(1./(1+exp(-rho.*q)) - 0.5);
% 
% zeta = 0.1;
% g2 = zeros(size(x));
% 
% for i=1:length(x)
% 
%     if abs(x(i)) < zeta
%         g2(i) = (2/3)*x(i);
% 
%     elseif abs(x(i)) < 2*zeta
%         g2(i) = sign(x(i))*(3-(2-abs(x(i))/zeta)^2)/3;
% 
%     else
%         g2(i) = sign(x(i));
%     end
% 
% end
% 
% g3 = exp(0.5*x).*(sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x));
% 
% %% 10th ORDER VOLTERRA BASIS
% 
% Phi = [];
% 
% for k = 1:10
%     Phi = [Phi x.^k];
% end
% 
% %% COEFFICIENT ESTIMATION
% 
% w1 = Phi\g1;
% w2 = Phi\g2;
% w3 = Phi\g3;
% 
% v1 = Phi*w1;
% v2 = Phi*w2;
% v3 = Phi*w3;
% 
% %% PLOTS
% 
% figure
% 
% subplot(3,1,1)
% plot(x,g1,'b','LineWidth',2)
% hold on
% plot(x,v1,'r--','LineWidth',2)
% grid on
% title('g1 vs Volterra (10th order)')
% legend('True','Volterra')
% 
% subplot(3,1,2)
% plot(x,g2,'b','LineWidth',2)
% hold on
% plot(x,v2,'r--','LineWidth',2)
% grid on
% title('g2 vs Volterra (10th order)')
% legend('True','Volterra')
% 
% subplot(3,1,3)
% plot(x,g3,'b','LineWidth',2)
% hold on
% plot(x,v3,'r--','LineWidth',2)
% grid on
% title('g3 vs Volterra (10th order)')
% legend('True','Volterra')
% 
% 
% 









% 
% clc
% clear
% close all
% 
% %% Input
% N = 2000;
% x = linspace(-0.5,0.5,N)';
% 
% %% TRUE SYSTEM
% 
% d = exp(0.5*x).*(sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x));
% 
% %% Parameters
% order = 15;
% mu = 0.6;
% eps = 1e-6;
% 
% w = zeros(order+1,1);   % +1 for bias
% 
% y = zeros(N,1);
% e = zeros(N,1);
% 
% %% Adaptive RTBM (FIXED)
% 
% for n = 1:N
% 
%     % -------- Volterra vector WITH bias --------
%     phi = ones(order+1,1);
%     for k = 1:order
%         phi(k+1) = x(n)^k;
%     end
% 
%     % Output
%     y(n) = w'*phi;
% 
%     % Error
%     e(n) = d(n) - y(n);
% 
%     % -------- Adaptive Tukey threshold --------
%     if n > 20
%         c = 2*std(e(1:n));
%     else
%         c = 1;
%     end
% 
%     % Tukey weight (SOFT version)
%     if abs(e(n)) <= c
%         zeta = (1 - (e(n)/c)^2)^2;
%     else
%         zeta = 0.05;   % prevent dead learning
%     end
% 
%     % Normalize
%     norm_phi = (phi'*phi) + eps;
% 
%     % Update
%     w = w + mu * zeta * e(n) * phi / norm_phi;
% 
% end
% 
% %% Plot
% 
% figure
% plot(x,d,'b','LineWidth',2)
% hold on
% plot(x,y,'r--','LineWidth',2)
% grid on
% 
% title('g3: RTBM Volterra')
% legend('True g3','RTBM Volterra')








































clc
clear
close all

%% INPUT
x = linspace(-0.5,0.5,1000)';

%% TRUE SYSTEM
g3 = exp(0.5*x).*(sin(pi*x)+0.3*sin(3*pi*x)+0.1*sin(5*pi*x));

%% ADD SPIKES
d = g3;

spike_idx = [300 400 500 600 850];
d(spike_idx) = d(spike_idx) + 50;   % moderate spikes

%% VOLTERRA BASIS
order = 4;

Phi = [];
for k = 1:order
    Phi = [Phi x.^k];
end

%% VOLTERRA (MSE)
w_vol = Phi \ d;
y_vol = Phi * w_vol;

%% RTBM (FIXED)
c = 0.8;   % IMPORTANT FIX
w_rtbm = zeros(order,1);

for iter = 1:15

    y_temp = Phi * w_rtbm;
    e = d - y_temp;

    zeta = zeros(length(e),1);

    for i=1:length(e)
        if abs(e(i)) <= c
            zeta(i) = (1 - (e(i)/c)^2)^2;
        else
            zeta(i) = 0;
        end
    end

    W = diag(zeta);
    w_rtbm = (Phi' * W * Phi) \ (Phi' * W * d);

end

y_rtbm = Phi * w_rtbm;

%% -------- ERROR CALCULATION (STEP-BY-STEP) --------

% error at each point
err_vol_vec  = abs(y_vol - g3);
err_rtbm_vec = abs(y_rtbm - g3);

% mean absolute error
err_vol  = mean(err_vol_vec);
err_rtbm = mean(err_rtbm_vec);

disp('Mean Absolute Error:')
fprintf('Volterra Error = %.4f\n', err_vol);
fprintf('RTBM Error     = %.4f\n', err_rtbm);

%% PLOT
figure

plot(x,g3,'k','LineWidth',3)
hold on
plot(x,y_vol,'r--','LineWidth',2)
plot(x,y_rtbm,'b','LineWidth',2)

plot(x(spike_idx), d(spike_idx),'go','MarkerSize',10,'LineWidth',2)

legend('True g3','Volterra','RTBM','Spikes')
grid on
title('Correct Comparison: RTBM better than Volterra')