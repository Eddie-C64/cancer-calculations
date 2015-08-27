a = 1;
b = 3;
N = 50;
h = (b-a)/(N-1);
x = a-h; % look at this trick
approxIntegral = 0;
for k = 1:N
    x = x+h; % compute current x value
    % add the terms up
    if k==1 || k==N % ends of interval
        approxIntegral = approxIntegral + (h/2)*exp(x);
    else % middle of interval
        approxIntegral = approxIntegral + h*exp(x);
    end
end
approxIntegral
x

%Yes the value is roughly 1.7200
%Close to e-1

%x numerical value is 1
%The loop constant is 1:N, where N is 10, so the Loop is ran for 10 interations.
%The same as the answer above it is 10 times.

% approxIntegral = 1.7183


% x = 1.0000

%approxIntegral = 17.3697


% x = 3.0000
