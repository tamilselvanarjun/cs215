x = -10:0.02:10; x = x';
y = 5*sin(2*x + pi/3);

ycorrupt = y;
index = randperm(size(x,1),40);
ycorrupt(index) = ycorrupt(index) + (5 + 5*rand(40,1));		
% the parameters for the corruption of values can be done here
figure;
plot(x,y,'b');
xlabel('x');
ylabel('y');
hold on;

plot(x,ycorrupt,'r');

filteredMedian = zeros(size(x));
for i=1:size(x,1),
	filteredMedian(i) = median(neighbours(ycorrupt,i));
end

filteredMean = zeros(size(x));
for i=1:size(x,1),
	filteredMean(i) = mean(neighbours(ycorrupt,i));
end

plot(x,filteredMedian,'g');
plot(x,filteredMean,'k');
legend('clean wave','corrupt wave','filtered wave (median)','filtered wave (mean)');

relative_error_median = sum((filteredMedian-y).^2) / sum(y.^2)
relative_error_mean = sum((filteredMean-y).^2 ) / sum(y.^2)