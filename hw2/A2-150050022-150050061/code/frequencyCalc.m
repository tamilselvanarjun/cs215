function [fx1,fx2,fx1x2] = frequencyCalc(x1,x2),                            % fx1 = p_X1(x), fx2 = p_X2(x) , fx1x2 = p_XY(x,y)
   totalSize = size(x1,1)*size(x1,2);
   x1 = floor(x1/10); x2 = floor(x2/10);                                    % divide by 10 to put them into correct bins
   fx1 = zeros(26,1);
   fx2 = zeros(26,1);
   fx1x2 = zeros(26);                                                       % pre-initialization
   
   for i = 1:size(x1,1),
       for j = 1:size(x1,2),    
           fx1(x1(i,j)+1) = fx1(x1(i,j)+1) + 1 ;                            % put the values in correct bins
           fx2(x2(i,j)+1) = fx2(x2(i,j)+1) + 1;
           fx1x2(x1(i,j)+1, x2(i,j)+1) = fx1x2(x1(i,j)+1, x2(i,j)+1) + 1;
       end
   end
   fx1 = fx1 / totalSize;                                                   % normalize
   fx2 = fx2 / totalSize;
   fx1x2 = fx1x2 / (totalSize);
end