function retval = neighbours(z,index)

minindex = max(1,index-8);
maxindex = min(size(z,1),index+8);
retval = z(minindex:maxindex);

end
