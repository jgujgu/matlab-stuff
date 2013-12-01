function event = draw_event(p)

    event=sum(cumsum(p)<rand)+1; 
end