function [ xdot ] = my_ode( t, x, lesu )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global alpha beta gamma delta lambda ; 

xdot(1) = (gamma-delta - alpha - lesu) * x(1)+ beta * x(2);
xdot(2) = gamma * x(1) - (lambda + beta)* x(2);

end

