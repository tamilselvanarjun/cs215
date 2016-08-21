function val = UpdateStd(oldMean,oldStd,newMean,z,A,n),
	val = ((n-1)*oldStd^2 + n*oldMean^2 + z^2 - (n+1)*newMean^2)/n ;
	val = sqrt(val);
end