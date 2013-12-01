lam=(800:20:1000)/30; 
probability_block=zeros(1,length(lam)); 
i=0;
mu=60/56;
K=32;
for changeL=lam
    i=i+1; 
    probability_block(i)=((changeL/mu).^K/factorial(K))/(sum((changeL/mu).^(0:K)./factorial(0:K)));
end
bar(lam*30,probability_block,'b') 

plot(lam*30,0.02*ones(size(lam)),'g','Linewidth',6) 
xlabel('average number of calls in a half hour') 
ylabel('probability of block') 
title('probability of call blocked vs calls in half hour')
axis([800 1000 0 0.10]) 
