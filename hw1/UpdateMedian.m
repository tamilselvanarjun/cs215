function val = UpdateMedian(oldMedian,newVal,A,n),
	A_temp = [A;newVal];
	val = median(A_temp);
endfunction

