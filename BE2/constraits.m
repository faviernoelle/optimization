function [ C,Ceq ] = constraits( lesu )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

global x_zero T rho ;

[tode,xode] = ode15s(@my_ode,[0 T],x_zero,[],lesu);
C=max(rho - xode(:,1)-xode(:,2);
Ceq=[];

end

