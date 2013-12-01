clear all; clc;
%run collaboration_matrix
collaboration_matrix;
%intialize other values
n = 10^6;
start_val = 1;
%start function
x = rankingMechanism(graph, nr_neighbors,k, n, start_val);

%plot
figure(1);
bar(1:k,x);
title(['N = ', num2str(n),',    initial value = ', num2str(start_val)]);
xlabel('state'); ylabel('rank');