

n = 50; 
m = 1000;

X_initial = 400;

q = 0;

lamda = 1.05;

X_n=zeros(m, n);  
gene_type=zeros(1, n);  
X_n(1:X_initial,1) = 1; 
gene_type(1)=X_initial; 
extinct_count=zeros(1,n);


for i=2:n 
    gene_type(i)=gene_type(i-1); 
    for y = 1:gene_type(i-1);
        for z = 1:X_n(y,i-1) 
            daughters = poissrnd(lamda,1,1);  
            mutate = binornd(1,q,1,1);  
            if mutate
                gene_type(i) = gene_type(i)+1;
                X_n(gene_type(i),i) = daughters; 
            else
                X_n(y,i) = X_n(y,i) + daughters;
            end 
        end 
        if X_n(y,i)== 0
            extinct_count(i)=extinct_count(i)+1; 
        end 
    end  
end 

figure 
plot(1:n, X_n) 
xlabel('generation') 
ylabel('number of women of each type') 
title('q=0,X_{0}=400, n=50')

figure 
stairs(1:n, [gene_type;extinct_count]') 
xlabel('generation') 
ylabel('number of each type') 
title('q=0,X_{0}=400, n=50') 
legend('types','extinct','Location','Best')

figure 
bar(1:gene_type(end), X_n(1:gene_type(end),n),'b') 
xlabel('types') 
ylabel('number of each type') 
title('Final women of each type')