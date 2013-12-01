t_max=10;
h=0.01; 
s=1; 

Ws=normrnd(0,s^2*sqrt(h),1,t_max/h); 
Xs=cumsum(Ws);
plot(h:h:t_max,Xs,'g'); 
xlabel('time');
title(['weiner process, h=',num2str(h)]); 

axis([0 t_max -10 10])