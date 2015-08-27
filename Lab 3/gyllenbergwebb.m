function [ dydt ] = gllenbergwebb(t,y,b,u,k,a,r,m)
%This function uses the pplane8 to help solve for a solution by inputting
%values.

    dydt=zeros(2,1);
    P=y(1);
    Q=y(2);
    dydt(1)=(b-u-((k*(P+Q))/(a*(P+Q)+1)))*P+((r)/((P+Q)+m))*Q
    dydt(2)=((k*(P+Q))/(a*(P+Q)+1))*P-((r)/((P+Q)+m)+u)*Q
end

