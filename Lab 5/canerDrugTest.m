%CancerDrugTest
%Exercise 1
patients = 200; % number of total patients
drug = 100; % number of patients receiving the cancer drug
drugDecrease = 71; % number of patients receiving the cancer drug
% whose tumor size decreased
placeboDecrease = 58; % number of patients receiving the placebo
% whose tumor size decreased

results=zeros(patients,2);
results(1:drug,1)=ones(drug,1);
results(1:drugDecrease,2) = ones(drugDecrease,1);
results(drug+1:drug+placeboDecrease,2) = ones(placeboDecrease,1);


%Exercise 2
% set variables to sum up to the probabilities of events
A = 0; % probability of "took cancer drug"
AandB = 0; % probability of "took cancer drug" & "tumor decrease"

N=1000;
for i = 1:N % run set of N experiments N times
a = 0; % cancer drug counter
aandb = 0; % cancer drug+decrease counter
for j = 1:N % run experiment N times
    % randomly pick one of the 200 individuals
individual = randi(200);
% output his/her results
out = results(individual,:);
if out(1)==1
    a = a + 1;
    if(out(2))==(1)
     aandb = aandb + 1;
    end
end
A = A+a/N;
AandB = AandB + aandb/N;

end
% add the probability for this set of N experiments to the
% running sum
PA = A/N;
PAandB=AandB/N;
% estimated probability of event A and B
PBgivenA=(PAandB)./PA;
end

%Exercise 3
% estimated probability of event A
PBgivenA
fprintf( 'P(tumor decrease|cancer drug)=%g\n',PBgivenA)

