function [A] = androgenDecay(t,Ai,ti,Af,gamma)
%androgenDecay: the functions solves the androgen diff. eq.
%   with given specified parameters the diff. eq. is solved
    %Eduardo Carrasc Jr. 9/30/14
A=Af+(Ai-Af)*exp(-gamma*(t-ti));

end

