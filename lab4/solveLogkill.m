%% Exercise 3
[t1,n1]=ode45(@(t,n) exponential(t,n,0.05),[0,5],100)

%solveLogkill: The script solves the Logkill function
    %The fucniton uses a ode45 to solve the differential for .
        %Eduardo Carrasco jr. 9/16/14

[T1,N1]=ode45(@(t,N) logkill(t,N,0.05,0.3),[5,15],100)
%   This ode45 function solves the logkill from exercise 2.


adjT = [t1 ; T1(2:end)];
adjN = [n1 ; N1(2:end)];

plot(adjT,adjN,'-k')
title('Model of cancer cells with surgery & chemo')
xlabel('Time: 0 to 15')
ylabel('Number of Cancer Cells')
legend('person before & after chemo')
%% Exercise 4
[t2, n2]=ode45(@(t,n) exponential(t,n,0.05),[0,5],100)

[T2,N2]=ode45(@(t,N) logkill(t,N,0.05,0.3),[5,15],n2(end))

neoadjT=[t2,T2(2:end)];
neoadjN=[n2,N2(2:end)];
