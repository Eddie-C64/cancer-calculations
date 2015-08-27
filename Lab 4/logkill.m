function [fP] = logkill(t,N,a,c)
%logkill: the fucntion models cell-kill by chemotherapy.
%   The input, 't' represent time,'N' represents number of cancer cells, 'a' is aparameter
    %and 'c' is a constant.
    %Eduardo Carrasco Jr. 9/15/14
fP=a*N-c*N;
end
