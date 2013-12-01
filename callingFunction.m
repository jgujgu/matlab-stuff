function [X,time]=callingFunction(X_initial,lam,mu,K,T_k) 


i=1; 
X(i)=X_initial; 
time(i)=0;

while time(i)<T_k 
    x_t=X(i);
    if 0<=x_t && x_t<K 
        t=exprnd(1/(lam+mu*x_t)); 
        time(i+1)=time(i)+t; 
        u=rand;
      if u<((x_t*mu)/(lam+x_t*mu)) 
          X(i+1)=x_t-1;
      else
          X(i+1)=x_t+1;
      end
      
    elseif x_t==K
        t=exprnd(1/(x_t*mu)); 
        time(i+1)=time(i)+t; 
        X(i+1)=x_t-1;
    else

        break
    end
    i=i+1;
    
end
end

