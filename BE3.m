BE 3 : Optimization

%% FAVIER COUDERC 

%% Clean matlab 

clear all;
close all;
clc;

%%

f=[-1200;-1200;-1200;-850;-850;-850;-175;-175;-175];


% A=zeros(18,9);
A=[1 0 0 1 0 0 1 0 0;0 1 0 0 1 0 0 1 0;0 0 1 0 0 1 0 0 1;3 0 0 2 0 0 1 0 0;0 3 0 0 2 0 0 1 0;0 0 3 0 0 2 0 0 1;1 1 1 0 0 0 0 0 0;0 0 0 1 1 1 0 0 0;0 0 0 0 0 0 1 1 1;-1 0 0 0 0 0 0 0 0;0 -1 0 0 0 0 0 0 0;0 0 -1 0 0 0 0 0 0;0 0 0 -1 0 0 0 0 0;0 0 0 0 -1 0 0 0 0;0 0 0 0 0 -1 0 0 0;0 0 0 0 0 0 -1 0 0;0 0 0 0 0 0 0 -1 0;0 0 0 0 0 0 0 0 -1];
% A=[1 0 0 1 0 0 1 0 0;0 1 0 0 1 0 0 1 0;0 0 1 0 0 1 0 0 1;3 0 0 2 0 0 1 0 0;0 3 0 0 2 0 0 1 0;0 0 3 0 0 1 0 0 2;1 1 1 0 0 0 0 0 0;0 0 0 1 1 1 0 0 0;0 0 0 0 0 0 1 1 1;-1 -1 -1 -1 -1 -1 -1 -1 -1];
Aeq=[600 -400 0 600 -400 0 600 -400 0;300 0 -400 300 0 -400 300 0 -400];
b=[400;600;300;600;800;375;600;500;325;0;0;0;0;0;0;0;0;0];
% b=[400;600;300;600;800;375;600;500;325;0];
beq=[0 0];

x=linprog(f,A,b,Aeq,beq);

x
