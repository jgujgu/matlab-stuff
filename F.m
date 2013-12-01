clear all;
%run collaboration_matrix
collaboration_matrix;

%solve for eigenvectors V
[V,~] = eig(randomwalk');

%zero all non-positive eigenvectors
for i = 1:min(size(V));
    if(sum(V(:,i)<0))
        V(:,i) = 0;
    end
end

%this is to find the non-zero eigenvector
for i = 1:min(size(V));
    if(sum(V(:,i) ~= 0)>0)
        x(i) = i
    end
    
    x = find(x)
end

figure(1)
bar(1:k, V(:,x(1))/sum(V(:,x(1))))
title('modified dist. eigenvalue problem');
xlabel('state'); ylabel('rank');