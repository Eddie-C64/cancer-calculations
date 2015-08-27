function [dydt] = f2(t,y)
%This function creates a differential and can input values for a
%solution.
%   Once again, if the inputs are small, then they will not effect the
%   the outputs, because the output uses a log function.
dydt=0.4*y*log(230/y)

end

