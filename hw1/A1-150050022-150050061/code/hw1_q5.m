A = load('input_array.txt');
A = A';
n = size(A,1);
sortedA = sort(A);
% old values of mean, median and stdDev
oldMean = mean(A)
oldMedian = median(A)
oldStd = std(A)
% calculating the new values.
newVal = input('Enter the new value.   ');

newMean = UpdateMean(oldMean,newVal,A,n)
% newMeanOriginal = mean([A ;newVal])

newMedian = UpdateMedian(oldMedian,newVal,sortedA,n)
% newMedianOriginal = median([A;newVal])

newStd = UpdateStd(oldMean,oldStd,newMean,newVal,A,n)
% newStdOriginal = std([A ;newVal])
