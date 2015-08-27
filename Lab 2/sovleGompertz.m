[T1,Y1] = ode45(@f,[0,20],100)
[T2,Y2] = ode45(@f,[0,20],500)
[T3,Y3] = ode45(@f,[0,20],-100)

plot(T1,Y1,'-k',T2,Y2,'-r')

%The error I get is 'undefined function or variable odefun', so I changed it to @f command.
%The graph when only plotting [T1,Y1] and [T2,Y2] yields well formed
%stable solution at  225.