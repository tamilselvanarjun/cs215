x = double(imread('parrots.png'));		% cast into double
x1 = x(: , 1:size(x,2)-1);				% take X1 and X2 as given
x2 = x(: , 2:size(x,2));				

[y1,y2,y3] = frequencyCalc(x1,x2);		% calculate the values of p(x), p(y) and p(x,y)

c1 = corCoeff(x1,x2)					% correlation coefficient
c2 = qmi(y1,y2,y3)						% QMI
c3 = anotherMeasure(y1,y2,y3)			% another measure