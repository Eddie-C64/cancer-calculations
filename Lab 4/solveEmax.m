%%Exercise 6
%solveNortonSimon: The script solves the nortonSimon function.
    %The fucniton uses a ode45 to solve the differential for.
        %Eduardo Carrasco jr. 9/16/14
[t1,n]=ode45(@(t,n) Emax(t,n,0.05,0.3,100),[0,5],100)

[T1,N1]=ode45(@(t,N) Emax(t,N,0.05,0.3,100),[5,15],100)
%   This ode45 function solves the logkill from exercise 2.


adjT = [t1 ; T1(2:end)];
adjN = [n1 ; N1(2:end)];

plot(adjT,adjN,'-k')
title('Model of cancer cells with surgery & chemo')
xlabel('Time: 0 to 15')
ylabel('Number of Cancer Cells')
legend('person before & after chemo')