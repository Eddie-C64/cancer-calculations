function A = interp_fit(A_fit,t)
% A = interp_fit(A_fit,t)
%
% Interpolation of androgen data fitting.
%
% Inputs:
%   A_fit = {gamma,Ai,ti,Af,p,regions} where
%       gamma   = parameter in equation (13)
%       Ai      = androgen off-treatment data values in equation (13)
%       ti      = androgen off-treatment time points in equation (13)
%       Af      = androgen on-treatment data values in equation (13)
%       p       = contains spline information for regions with piecewise
%                 cubic hermite splines
%       regions = time points separating intervals of on-treatment and
%                 off-treatment
%   t = time point at which data needs to be interpolated at
%
% Output:
%   A = interpolated value of androgen concentration A at time t
%
% Lab #6: MAT 394 Mathematics and Cancer Fall 2014

[gamma,Ai,ti,Af,p,regions] = A_fit{:};

A = zeros(1,length(t));

if length(regions)==7
    for j = 1:length(t)
        if t(j) < regions(1)
            A(j) = androgenDecay(t(j),Ai(1),ti(1),Af(1),gamma);
        elseif t(j) < regions(2)
            A(j) = ppval(p(1),t(j));
        elseif t(j) < regions(3)
            A(j) = androgenDecay(t(j),Ai(2),ti(2),Af(2),gamma);
        elseif t(j) < regions(4)
            A(j) = ppval(p(2),t(j));
        elseif t(j) < regions(5)
            A(j) = androgenDecay(t(j),Ai(3),ti(3),Af(3),gamma);
        elseif t(j) < regions(6)
            A(j) = ppval(p(3),t(j));
        elseif t(j) < regions(7)
            A(j) = androgenDecay(t(j),Ai(4),ti(4),Af(4),gamma);
        else
            A(j) = ppval(p(4),t(j));
        end
    end
    
elseif length(regions)==5
    for j = 1:length(t)
        if t(j) < regions(1)
            A(j) = androgenDecay(t(j),Ai(1),ti(1),Af(1),gamma);
        elseif t(j) < regions(2)
            A(j) = ppval(p(1),t(j));
        elseif t(j) < regions(3)
            A(j) = androgenDecay(t(j),Ai(2),ti(2),Af(2),gamma);
        elseif t(j) < regions(4)
            A(j) = ppval(p(2),t(j));
        elseif t(j) < regions(5)
            A(j) = androgenDecay(t(j),Ai(3),ti(3),Af(3),gamma);
        else
            A(j) = ppval(p(3),t(j));
        end
    end
    
elseif length(regions)==3
    for j = 1:length(t)
        if t(j) < regions(1)
            A(j) = androgenDecay(t(j),Ai(1),ti(1),Af(1),gamma);
        elseif t(j) < regions(2)
            A(j) = ppval(p(1),t(j));
        elseif t(j) < regions(3)
            A(j) = androgenDecay(t(j),Ai(2),ti(2),Af(2),gamma);
        else
            A(j) = ppval(p(2),t(j));
        end
    end

end