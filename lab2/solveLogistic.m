[T,Y] = ode45(@f,[0,5],100)

%/This is a ode45 function.

%/This is the actual solution to the differential equation given in the
%lab.
truesoln=(230*exp(0.4*T))/(1.3+exp(0.4*T));
plot(T,Y,'.k',T,truesoln,'-y')
legend('ode45','truesoln')

%The estimation is very good but the two fucntion get to the same solution
%a lot slower then the actaul solutoin to the differential equation.

%Another way we can visualize/calulate the difference is by creating a
%variable called 'diff'. The setting equal to the difference of the two
%solutions at each point along the set of vectors. This can show how it is
%different over time.