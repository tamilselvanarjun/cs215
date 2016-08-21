function val = UpdateMedianNew(oldMedian,newVal,A,n),
	if(newVal>=oldMedian)
		if(mod(n,2)==0),
			if(newVal >= A(n/2+1)),
				val = A(n/2+1);
			else 
				val = newVal;
			end
		else
			if(newVal >= A((n+3)/2)),
				val = (oldMedian + A((n+3)/2))/2;
			else 
				val = (oldMedian + newVal)/2;
			end
		end
	else
		if(mod(n,2)==0),
			if(newVal < A(n/2)),
				val = A(n/2);
			else 
				val = newVal;
			end
		else
			if(newVal <= A((n-1)/2)),
				val = (A((n-1)/2) + oldMedian)/2;
			else 
				val = (oldMedian + newVal)/2;
			end
		end
		

end