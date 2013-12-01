function [prob]=callingDist(X_initial,lam,mu,K,T_k) 
runningTime=zeros(1,K+1); 
x=X_initial; 
time=0;
while time<T_k 
    if 0<=x && x<K
        t=exprnd(1/(lam+mu*x)); 
        runningTime(x+1)=runningTime(x+1)+t; 
        time=time+t; 
        u=rand; 
        if u<((x*mu)/(lam+x*mu))
            x=x-1; 
        else
            x=x+1;
        end
    elseif x==K
        t=exprnd(1/(x*mu)); 
        runningTime(x+1)=runningTime(x+1)+t; 
        x=x-1; 
        time=time+t;
    else

        break
    end
end

prob=runningTime/time; 
bar(0:K,prob,'b')

end