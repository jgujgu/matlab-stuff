function ranks = rankingMechanism(graph, nr_neighbors, k, N, initial)

table = graph;
neighbors = nr_neighbors;
length = k;

for i = 1:k
   %list connectivity
   connectNeighbors(i, 1:neighbors(i)) = find(table(i,:));    
end

%start value
j = initial;
ranks = zeros(1, k);

for i = 1:N
    %add one visit t
    ranks(j) = ranks(j) + 1;
    j = connectNeighbors(j, randi(neighbors(j)));
end
%turn into fractions
ranks = ranks/N;

end

