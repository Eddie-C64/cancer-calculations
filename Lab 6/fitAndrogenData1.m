function A_fit = fitAndrogenData1(A_data)
% A_fit = fitAndrogenData1(A_data)
%
% Interpolation of androgen concentration A data using exponential fits and
% piecewise cubic hermite splines --- Case 1 data.
%
% Input:
%   A_data = matrix containing t time data in first column and
%       corresponding A androgen concentration data in second column
%
% Output:
%   A_fit = {gamma,Ai,ti,Af,p,regions} where
%       gamma   = parameter in equation (13)
%       Ai      = androgen off-treatment data values in equation (13)
%       ti      = androgen off-treatment time points in equation (13)
%       Af      = androgen on-treatment data values in equation (13)
%       p       = contains spline information for regions with piecewise
%                 cubic hermite splines
%       regions = time points separating intervals of on-treatment and
%                 off-treatment
%
% Lab #6: MAT 394 Mathematics and Cancer Fall 2014

gamma = 2.7726;

t = A_data(:,1)';
A = A_data(:,2)';

Ai1 = 10.7;
ti1 = 0;
Af1 = 0.52;
p1 = pchip([5 6 t(2:10)], [androgenDecay([5 6],Ai1,ti1,Af1,gamma) A(2:10)]);

Ai2 = ppval(p1,t(10));
ti2 = t(10);
Af2 = 0.6;
p2 = pchip([400 405 t(11:22)], [androgenDecay([400 405],Ai2,ti2,Af2,gamma) A(11:22)]);

Ai3 = ppval(p2,t(22));
ti3 = t(22);
Af3 = 0.67;
p3 = pchip([815 820 t(23:33)], [androgenDecay([815 820],Ai3,ti3,Af3,gamma) A(23:33)]);

Ai4 = ppval(p3,t(33));
ti4 = t(33);
Af4 = 0.57;
p4 = pchip([1215 1220 t(34:39)], [androgenDecay([1215 1220],Ai4,ti4,Af4,gamma) A(34:39)]);

Ai = [Ai1 Ai2 Ai3 Ai4];
ti = [ti1 ti2 ti3 ti4];
Af = [Af1 Af2 Af3 Af4];
p = [p1 p2 p3 p4];

regions = [5 t(10) 400 t(22) 815 t(33) 1215];

A_fit = {gamma,Ai,ti,Af,p,regions};

end