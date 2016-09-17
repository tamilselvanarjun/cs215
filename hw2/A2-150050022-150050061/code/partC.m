x = double(imread('parrots.png'));
s = x(randperm(size(x(:),1)));				% scramble the values
x1 = s(: , 1:size(x,2)-1);
x2 = s(: , 2:size(x,2));

[y1,y2,y3] = frequencyCalc(x1,x2);		

c1 = corCoeff(x1,x2)						% do the same as partA
c2 = qmi(y1,y2,y3)
c3 = anotherMeasure(y1,y2,y3)