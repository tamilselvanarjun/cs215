function val = anotherMeasure(y1,y2,y3)
    
    val = 0;
    for i=1:26,
    	for j=1:26,
    		val = val + abs(y1(i)*y2(j)-y3(i,j));
    	end
    end

    % val = sum(sum(abs(y2'*y1 - y3)));		% easy thing, just take the values and add their absolute values
end