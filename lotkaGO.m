

left = [1,0;1,1;0,1];
right = [2,0;0,2;0,0];

c = [1, 0.005, 0.6]'; 
y_initial0 = [50, 100]';
maximum_t = 30;

simulation_result = LotkaVolterraModel(left, right, c, y_initial0, maximum_t);

figure 
plot(simulation_result(1,:), simulation_result(2:end,:)); 
legend('prey','predator'); 
xlabel('time'); 
xlim([0 30]); 
ylim([0 1000]); 
title(sprintf('prey(0) = %d, predator(0) = %d', y_initial0)); 
ylabel('population size');


figure
plot(simulation_result(2,:), simulation_result(3,:),'g'); 
title('phase space plot'); 
xlabel('prey'); 
ylabel('predator');