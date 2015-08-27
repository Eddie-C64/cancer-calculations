function [fP] = Emax(t,N,a,c,delta)
%Emax: Models cell-kill by chemo-drug.
%   The function is modeled by proportial to a saturable function of mass.
    %Eduardo Carrasco Jr. 9/16/14
    fP=a*N-c*((N)/(N+delta));
    
end
