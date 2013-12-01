X_0=10;

Y_n=0;


a=10^(-2);
b=10^(-1);
n=10^5;

P_pp=a*X_0*(X_0-1);
P_d=b*Y_n;


lineone=[1-a*10*9 a*10*9 0 0 0 0]
linesix=[ 0 0 0 0 5*b 1-5*b]

bigMatrix=zeros(4,4)



stepper=1
for i=1:4
    bigMatrix(i,stepper)=b*i*(1-a*(10-i*2)*(9-i*2))
    bigMatrix(i,stepper+1)=(1-b*i)*(1-a*(10-i*2)*(9-i*2))+b*i*(a*(10-i*2)*(9-i*2))
    bigMatrix(i,stepper+2)=a*(10-i*2)*(9-i*2)*(1-b*i)
    stepper=stepper+1
end
bigMatrix

biggerMatrix=zeros(6,6)
biggerMatrix(1,:)=lineone
biggerMatrix(6,:)=linesix
biggerMatrix(2:5,:)=bigMatrix