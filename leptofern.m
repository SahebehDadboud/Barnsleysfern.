% leptosporangiate fern

function [X,Y] = leptofern(x0,y0, n)
  X = zeros(1,n);
  Y = zeros(1,n);
  X(1) = x0;
  Y(1) = y0;
  
  for i = 2:n
    r = rand;
    if (r < 0.02) % f1
      X(i) = 0;
      Y(i) = 0.25*Y(i-1) - 0.14;
    elseif (r >= 0.02 && r < 0.86) % f2
      X(i) = 0.85*X(i-1) + 0.02*Y(i-1);
      Y(i) = -0.02*X(i-1) + 0.83*Y(i-1) + 1;
    elseif (r >= 0.86 && r < 0.93) % f3
      X(i) = 0.09*X(i-1) - 0.28*Y(i-1);
      Y(i) = 0.3*X(i-1) + 0.11*Y(i-1) + 0.6;
    else % f4
      X(i) = -0.09*X(i-1) + 0.28*Y(i-1);
      Y(i) = 0.3*X(i-1) + 0.09*Y(i-1) + 0.7;
    end
  end

end