function simulation_result=LotkaVolterraModel(left, right, c, y_initial, maximum_t) 

n=1; 
Y_results(:,n)=y_initial; 
T(n)=0;

while T(n)<=maximum_t 
    
    y=Y_results(:,n); 
    
    hazards=zeros(3,1);
    hazards(1)=c(1)*y(1); 
    hazards(2)=c(2)*y(1)*y(2); 
    hazards(3)=c(3)*y(2); 
    
    hazard_sum=sum(hazards); 
    
    p=hazards/hazard_sum; 
  
    T(n+1)=T(n)+exprnd(1/hazard_sum); 
    
    
    event=sum(cumsum(p)<rand)+1; 
    Y_results(:,n+1)=y-left(event,:)'+right(event,:)'; 
    
    n=n+1;

end

simulation_result=[T;Y_results];

end
