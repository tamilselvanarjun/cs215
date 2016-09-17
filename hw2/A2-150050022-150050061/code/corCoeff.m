function corCoeff = corCoeff(x1,x2)
    N = size(x1,1)*size(x1,2);
    mean1 = mean(x1(:));									% calculate means
    mean2 = mean(x2(:));
    std1 = std(x1(:));										% calculate standard deviations
    std2 = std(x2(:));
    x1 = x1 - mean1;										% subtract mean from all values
    x2 = x2 - mean2;
    corCoeff = sum(sum((x1).*x2 / ((N-1)* std1 * std2)));	% return correlation coefficient
end