% Thelypteridaceae fern


function [X,Y] = thelfern(x0,y0, n)
  X = zeros(1,n);
  Y = zeros(1,n);
  X(1) = x0;
  Y(1) = y0;
  
  for i = 2:n
    r = rand;
    if (r < 0.02) % f1
      X(i) = 0;
      Y(i) = 0.25*Y(i-1) - 0.4;
    elseif (r >= 0.02 && r < 0.86) % f2
      X(i) = 0.95*X(i-1) + 0.005*Y(i-1) - 0.002;
      Y(i) = -0.005*X(i-1) + 0.93*Y(i-1) + 0.5;
    elseif (r >= 0.86 && r < 0.93) % f3
      X(i) = 0.035*X(i-1) - 0.2*Y(i-1) -0.09;
      Y(i) = 0.16*X(i-1) + 0.4*Y(i-1) + 0.02;
    else % f4
      X(i) = -0.04*X(i-1) + 0.2*Y(i-1) + 0.083;
      Y(i) = 0.16*X(i-1) + 0.04*Y(i-1) + 0.12;
    end
  end

end