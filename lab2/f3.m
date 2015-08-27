function [dydt] = f3( t,y,c )
%This function can give very different values then the first two functions.
%   The reason for this is because the function now requires 3 inputs in order to give a valid output.

dydt=c*y
end

