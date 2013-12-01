clear all; clc;

%run collaboration_matrix
collaboration_matrix;

%intialize distribution
p_initial = [1; zeros((k-1),1)];

p = p_initial;
%run N iterations
N = 100;
ranks = zeros(1,N);

for i=1:N
    p = randomwalk'*p;
end

figure(1);
bar(1:k,p);
title(['N = ', num2str(N)]);
xlabel('state'); ylabel('rank');
