function [ J ] = cout( lesu )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
global x_zero mu;

tspan=[0 30];

[tode,xode] = ode15s(@my_ode,tspan,x_zero,[],lesu);
J=xode(end,3)*mu+xode(end,1);

end


