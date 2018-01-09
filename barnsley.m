% barnsley fern

function [X,Y] = barnsley(x0,y0, n)
  X = zeros(1,n);
  Y = zeros(1, n);
  X(1) = x0;
  Y(1) = y0;
  for i = 2:n
    r = rand;
    if (r < 0.01)
      X(i) = 0;
      Y(i) = 0.16*Y(i-1); %Choose this 1% of the time.
    elseif (r >= 0.01 && r < 0.86)
      X(i) = 0.85*X(i-1) + 0.04*Y(i-1); %Choose this 85% of the time
      Y(i) = -0.04*X(i-1) + 0.85*Y(i-1) + 1.6;
    elseif (r >= 0.86 && r < 0.93)
      X(i) = 0.2*X(i-1) - 0.26*Y(i-1); %Choose this 7% of the time. 
      Y(i) = 0.23*X(i-1) + 0.22*Y(i-1) + 1.6;
    else
      X(i) = -0.15*X(i-1) + 0.28*Y(i-1); %Choose this 7% of the time.
      Y(i) = 0.26*X(i-1) + 0.24*Y(i-1) + 0.44;
    end
    
  end

end