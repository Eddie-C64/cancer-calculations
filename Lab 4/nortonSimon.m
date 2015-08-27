%%Exercise 5
% nortonSimon: Models Cell-kill by chemotherapy.
%    The chemo-drug is proportional to the growth rate of the tumor cell
%    populuation.
    %Eduardo Carrasco Jr. 9/15/14
function [fP] = nortonSimon(t,N,a,c)
    fP=a*N-c*a*N;
    
end
