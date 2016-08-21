% function val = UpdateMedian(oldMedian,newVal,A,n),
%    % assume A is sorted
%    A = [A(find(A<newVal));newVal;A(find(A>=newVal))];   % inserting the new value inside the array.
%    n = n+1;
%    if(mod(n,2) == 1),
%        val = A((n+1)/2);
%    else
%        val = (A(n/2)+A(n/2+1))/2;
% end

%more efficient one
function val = UpdateMedian(oldMedian,newVal,A,n),
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