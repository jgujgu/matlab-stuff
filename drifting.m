z=log(close_price); 

y=z(2:end)-z(1:end-1);

N=length(y);

h=1/365;

mu=sum(y)/(N*h) 

var_hat=sum((y-mu*h).^2)/((N-1)*h)