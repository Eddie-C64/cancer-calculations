%%Exercise 6
%solveNortonSimon: The script solves the nortonSimon function.
    %The fucniton uses a ode45 to solve the differential for.
        %Eduardo Carrasco jr. 9/16/14

[t,N]=ode45(@(t,N) nortonSimon(t,N,0.05,0.3),[0,5],100)


plot(t,N,'-k')

title('Model of cancer cells')
xlabel('Time: 0 to 5')
ylabel('Growth of Cancer Cells')
legend('Growth as a fucntion of time')