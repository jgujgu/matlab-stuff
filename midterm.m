X_0=10;
 
Y_n=0;
 
 
a=10^(-2);
b=10^(-1);
n=10^5;
 
P_pp=a*X_0*(X_0-1);
P_d=b*Y_n;
 
Xvector=zeros(1,n);
Yvector=zeros(1,n);
 
X_n=X_0;
 
for i=1:n
    if Y_n>0 && Y_n<5;
        if P_pp<rand(1) && X_n>=0;
            Y_n=Y_n+1;
            X_n=X_0-2;
            X_0=X_n;
            Xvector(1,i)=X_n;
            Yvector(1,i)=Y_n;
            
            P_pp=a*X_n*(X_n-1);
            P_d=b*Y_n;
        end
        if P_d<rand(1);
                Y_n=Y_n-1;                
                X_n=X_0+2;
                X_0=X_n;
                Xvector(1,i)=X_n;
                Yvector(1,i)=Y_n;
 
                P_pp=a*X_n*(X_n-1);
                P_d=b*Y_n;
 
        end
        
            
    elseif Y_n==0;
            if P_pp<rand(1);
                Y_n=Y_n+1;
                X_n=X_0-2;
                X_0=X_n;
                Xvector(1,i)=X_n;
                Yvector(1,i)=Y_n;
                
                P_pp=a*X_n*(X_n-1);
                P_d=b*Y_n;
                
            else
                X_n=X_0;
                Xvector(1,i)=X_n;
             
                P_pp=a*X_n*(X_n-1);
            end
            
    else
        if P_d<rand(1);
                Y_n=Y_n-1;                
                X_n=X_0+2;
                X_0=X_n;
                Xvector(1,i)=X_n;
                Yvector(1,i)=Y_n;
 
                P_pp=a*X_n*(X_n-1);
                P_d=b*Y_n;
        
        end
        
        
    end
    
 
end
 
Xvector
Yvector
P_pp
P_d
 
figure
bar(1:n,Xvector)
legend('P Molecule')
title('P Molecules over Time first 1000 timesteps')
axis([0 1000 0 10])
figure
bar(1:n,Yvector,'r')
legend('D Molecule')
title('D Molecules over Time first 1000 timesteps')
axis([0 1000 0 5])
