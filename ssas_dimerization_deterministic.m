clear all; close all;

whitebg(white);

k = [5e5, 0.2];
LVdiffeq = @(t, Y) [-2*k(1)*Y(1)^2 + 2*k(2)*Y(2);
                    k(1)*Y(1)^2 - k(2)*Y(2)];

%% Time evolution plot

figure(1);

y0 = [5e-7,0]';
[Tout, Yout] = ode45(LVdiffeq, [0 10], y0);

plot(Tout, Yout, '-');
legend('[P]','[P_2]');
xlabel('Time');
ylabel('Concentration (M)');

