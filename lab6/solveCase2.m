%Case 2 for the androgenDecay

%%% load A_data and psa_data
load('case1_data.mat')

%%% time is in months, convert to days
A_data(:,1) =30*A_data(:,1);
psa_data(:,1) = 30*psa_data(:,1);

%%% fit androgen data
A_fit = fitAndrogenData1(A_data);

%The parameters of desigened conditions
mu=0.0452;
q1=0.4493;
q2=0.2914;
d1=0.0156;
d2=0.0155;
sigma0=0.0053;
sigma1=0.0577;
sigma2=0.223;
alpha=14.9/15;
c1=0.00016;
c2=0.00012;
K1=0.8;
K2=1.7;
qm=5;
vm=0.27;
vh=4;
b=0.09;
rho1=1.3;
rho2=1.1;
delta=0.08;
m=3;
n=3;

param = {mu,q1,q2,d1,d2,sigma0,sigma1,sigma2,c1,c2,K1,K2,qm,vm,...
vh,b,rho1,rho2,delta,n,m};

%Exercise4
%%%time span
t0=0;
tf=ceil(max(A_data(end,1)),psa_data(end,1));
yquery = interp1(t,y,tquery,method,extrapolation);

initialPSA = interp1(t0,tf,yquery,'pchip', 'extrap');

%Initinal Conditions
Q10 =0.4;
Q20 =0.4;
P0 = initinalPSA;
X10 = alpha*P0;
X20 = (1-alpha)*P0;

%Exercise 5
[T,Y]=ode45(@(t,y) finalmodel(t,y,A_fit,param),[t0,tf],[X10,X20,Q10,Q20,P0]);
