x = double(imread('parrots.png'));
coerr = zeros(100,1);
for i =1:100
    x1 = x(: , 1:size(x,2)-i);				% putting into correct bins
    x2 = x(: , i+1:size(x,2));
    coerr(i) = corCoeff(x1,x2);
end
plot(coerr);								% plot relation between z and Correlation Coefficient
xlabel('z');
ylabel('Value of Correlation Coefficient');
title('Dependence of Correlation coefficient on z');
    