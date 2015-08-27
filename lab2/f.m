function [ dydt ] = f(t,y)
%This function returns a solution and values to the differential of
%Exercise 1.
%f(1,2)=0.7930
%f(5,2) = 0.7930, it has the same value as before.
%The inputs are to small because the constants of 0.4 and 1/230 are to
%large. In order for the funtion to have different values enter in higher
%values for f(t,y).

dydt=0.4*y*(1-y/230)
end

