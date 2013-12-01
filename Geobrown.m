x=-0.1:0.01:0.1; 

n = histc(y,x);

figure(1) 

bar(x,n/N/0.01,'g') 

hold on 
x_ext=-0.1:0.001:0.1;

plot(x_ext, normpdf(x_ext,mu*h,sqrt(var_hat*h))) 
grid on
axis([-0.1 0.1 0 30])