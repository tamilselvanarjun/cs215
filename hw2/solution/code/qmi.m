function val = qmi(y1,y2,y3)	
    val = sum(sum((y1'*y2 - y3).^2));				% easy thing, just take the values and add their squared values
end