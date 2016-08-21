function val = anotherMeasure(y1,y2,y3)
    val = sum(sum(abs(y1'*y2 - y3)));		% easy thing, just take the values and add their absolute values
end