clear all;
%run collaboration_matrix
collaboration_matrix;
%find solution of nullspace of (P' - I)
r = null(randomwalk'-eye(k));


figure(1);
bar(1:k, r/sum(r));
title('modified dist. system of linear equations');
xlabel('state'); ylabel('rank');E