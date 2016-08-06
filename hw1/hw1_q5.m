A = load('input_array.txt');
A = A';
n = size(A,1);

oldMean = mean(A)
oldMedian = median(A)
oldStd = std(A)

newVal = input('Enter the new value.   ');

newMean = UpdateMean(oldMean,newVal,A,n)
newMedian = UpdateMedian(oldMedian,newVal,A,n)
newStd = UpdateStd(oldMean,oldStd,newMean,newVal,A,n)

