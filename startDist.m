    K=32;
    X_initial=0;
    lam=25;
    mu=60/56; 

    callingDist(X_initial,lam,mu,K,10^3) 
    axis([0 K 0 0.1]); 
    xlabel('X') 
    ylabel('P') 
    title('T_{max}=10^3')
