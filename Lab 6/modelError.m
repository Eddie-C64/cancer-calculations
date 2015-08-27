%Lab 2: Exercise 1
function [abserr, relerr, mserr] = modelError(psa_data,T,P)
%modelError: Numerical solution of the measured value.
%   %Eduardo Carrasco Jr

Pinterp=interp1(T,P, psa_data(:,2),'linear');
N=length(T);

abserr=norm(Pinterp-T);
relerr=norm((Pinterp-T)/(T));
mserr=(1/N)*norm((Pinterp-T)^2);
end