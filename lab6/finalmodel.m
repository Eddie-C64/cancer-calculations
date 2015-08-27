function [dydt] = finalmodel(t,y,A_fit,param)
% finalmodel : This ode fits the Portz, Kuang, and Nagy paper
%   The model is fitted with the following parameters u, q1, q2, d1, d2, 
%   c1, c2, K1, K2, n, v_m, v_h, q_m, and b
        % Eduardo Carrasco Jr. 9/30/14

[mu,q1,q2,d1,d2,sigma0,sigma1,sigma2,c1,c2,K1,K2,qm,vm,vh,b,rho1,rho2,delta,n,m] = param{:};
A = interp_fit(A_fit,t);

dydt=zeros(5,1);
X1 = y(1);
X2 = y(2);
Q1 = y(3);
Q2 = y(4);
P = y(5);

lamda1=c1*((K1^n)/(Q1^n+K1^n));
lamda2=c2*((Q2^n)/(Q2^n+K2^n));

dX1dt = mu*(1-(q1)/(Q1))*X1-d1*X1-lamda1+lamda2;
dX2dt = mu*(1-q2/Q2)*X2-d2*X2-lamda2+lamda1;

dQ1dt =vm*((qm-Q1)/(q2-q1))*(A/(A+vh))-mu(Q1-q1)-b*Q1;
dQ2dt = vm*((qm-Q2)/(q1-q2))*(A/(A+vh))-mu(Q2-q2)-b*Q2;
dPdt = sigma0*(X1+X2)+sigma1*X1*((Q1^m)/(Q1^m+rho1^m))+sigma2*X2*((Q2^m)/(Q2^m+rho2^m))-delta*P;
dydt = [dX1dt ; dX2dt ; dQ1dt ; dQ2dt ; dPdt];

end