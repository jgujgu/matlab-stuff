x_intial=close_price(1,1);
alpha=0.0375;

expected_x=x_intial*exp(mu+var_hat/2); 

K=[0.8 1 1.2]*expected_x; 
a=(log(K/x_intial)-(alpha-var_hat/2))/(sqrt(var_hat)); 
b=a-sqrt(var_hat);

Qa=1-normcdf(a,0,1); 
Qb=1-normcdf(b,0,1);

c=x_intial*Qb-exp(-alpha)*K.*Qa;

c
