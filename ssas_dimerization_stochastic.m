%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stochastically simulate the dimerisation process
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all;

%% Define the reaction

% 2P -> P2
% P2 -> 2P

lhs = [2, 0;
       0, 1];
   
rhs = [0, 1;
       2, 0];
   
c = [1.66e-3, 0.2]';
y0 = [301, 0]';

T_MAX = 10;
T_STEP = 0.01;

%% Time evolution plot

sim_log = ssas_gillespie(lhs, rhs, c, y0, T_MAX, T_STEP);

figure(1);

plot(sim_log(:,1), sim_log(:,2:end), '-');
legend('[P]','[P_2]');
xlabel('Time');
xlim([0 10]);
ylabel('# of molecules');

%% Run multiple trials

NUM_TRIALS = 10000; % Number of trials. Change to reduce execution time

logs = zeros((T_MAX/T_STEP)+1, NUM_TRIALS);
for i = 1:NUM_TRIALS
    sim_log = ssas_gillespie(lhs, rhs, c, y0, T_MAX, 0.01);
    logs(:,i) = interp1(sim_log(:,1), sim_log(:,2), (0:T_STEP:T_MAX)', 'nearest');
    
    if mod(i,10) == 0
        disp(i)
    end
        
end

%% Display multiple trials

for i = 1:20
    figure(2);
    plot((0:T_STEP:T_MAX), logs(:,i)); hold on;
end

legend('[P]');
xlabel('Time');
ylabel('# of molecules');

%% Mean/variance display
figure(3)
sim_avg = mean(logs,2);
sim_std = std(logs,0,2);
plot(0:T_STEP:T_MAX, sim_avg, '-', 'Color', 'red', 'LineWidth', 2); hold on;
plot(0:T_STEP:T_MAX, sim_avg+3*sim_std, '--', 'Color', 'green', 'LineWidth', 2);
plot(0:T_STEP:T_MAX, sim_avg-3*sim_std, '--', 'Color', 'green', 'LineWidth', 2); hold off;
xlabel('Time');
ylabel('# of molecules');
legend('Mean', '\pm3\sigma')

%% PMF display
figure(4)
t = 10;
[N,X]=hist(logs((t/T_STEP)+1,:),0:301);
bar(X,N/NUM_TRIALS)
xlim([100 180])
ylim([0 0.1]);
xlabel('P(t=10)');
ylabel('Probability');
