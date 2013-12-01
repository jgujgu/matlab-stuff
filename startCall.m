
K=32;
T_k=30; 
X_initial=0;
lam=25;
mu=60/56; 

[X,time]=callingFunction(X_initial,lam,mu,K,T_k);

stairs(time,X','b') 
axis([0 T_k 0 K]) 
xlabel('time') 
ylabel('X')
title('calls over time') 