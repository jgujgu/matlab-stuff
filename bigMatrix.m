X_0=10;

Y_n=0;


a=10^(-2);
b=10^(-1);
n=10^6;

P_pp=a*X_0*(X_0-1);
P_d=b*Y_n;


bigMatrix=zeros(4,4)

stepper=1
for i=1:4
    bigMatrix(i,stepper)=b*i
    bigMatrix(i,stepper+1)=1-b*i-a*(10-i*2)*(9-i*2)
    bigMatrix(i,stepper+3)=a*(10-i*2)*(9-i*2)
end
bigMatrix
