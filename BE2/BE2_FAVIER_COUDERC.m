BE 2 : Optimization

%% FAVIER COUDERC 

%% Clean matlab 

clear all;
close all;
clc;

%% Definition des parametres

global gamma alpha lambda delta beta T rho mu i;
gamma =1.46;
alpha=5.63;
lambda = 0.16;
delta = 0;
beta = 0.48;
T = [0 30];
rho = 0.35;
mu = 1*10^-3;
i=0;
tspan=[0 T];

%% User definitions 

N=10;

%% 1ere partie : définition de la dynamique du systeme

global x_zero ;
x_zero=zeros (2,1);
x_zero(1,1)=0.5;
x_zero(2,1)=0.5;
u=zeros(N,1);
lesu=zeros(N,1);


%% utilisation de ode 45 

[t,x] = ode15s(@my_ode,tspan,x_zero,[],lesu);

%% lesu

%voir fonction cout

%% Contriantes lineaires d'egalite : 

% voir fonction constraits

%% Bornes

umin=zeros(N,1);
umax=zeros(N,1);
for i=1:N
    umax(i,1)=1;
end


%% Contraintes non lineaires
 
%voir fonction constraits

%% Utilisation de FMINCON : 

lesu=fmincon(@cost,lesu,[],[],[],[],umin,umax,@constraits);

% lesu = fmincon(@cout,lesu,[],[],[],[],zeros(N,1),ones(N,1),@CONSTRAITS);
% 
% [t,x] = ode15s(@my_ode, tspan, x0,[],lesu);

% subplot(122);
% plot(t,x(:,1),'k',t,x(:,2),'b',t,x(:,1)+x(:,2),'m',t,ones(size(t))*rho,'r')
% 
% ttn=(0:1:N-1)'*T/N;
% subplot(121);
% stairs([ttn;T],[lesu;lesu(end)],'k');

%% Trace 

subplot(1,2,2)
plot(tode,xode(:,1),'x';tode,xode(:,2),'b',tode,xode(:,1)+xode(:,2),'m',tode,ones(size(tode))*rho,'r');

