function MSup=min_time_btw_updates(nsat,T,MeasPairs_ut)
MSup=cell(nsat,1);
for i=1:1:nsat
    for k=2:1:T 
        if isempty(MeasPairs_ut{k})
            ind=[];
        else    
        ind=find(MeasPairs_ut{k}(:,1)==i);
        end
        if length(ind)>0
            MSup{i}=vertcat(MSup{i},k);
        end
    end 
end                                          

