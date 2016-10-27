BE1  : Optimization 

%% FAVIER COUDERC 

%% Clean matlab 

clear all;
close all;
clc;


%% Premier exercice 

% x = quadprog(H,f,A,b,Aeq,beq) minimizes 1/2*x'*H*x + f'*x subject to the restrictions A*x ? b. 
% A is a matrix of doubles, and b is a vector of doubles. 
% And subject to the additional restrictions Aeq*x = beq. Aeq is a matrix of doubles, and beq is a vector of doubles. 
% If no inequalities exist, set A = [] and b = [].

% User definition

n = 4 ;
alpha =2 ;



beta = zeros(4,1) ;
for i=1:n
    beta(i,1) = 2*i ;
end
H=zeros(4,4);
for i=1:4
    H(i,i)=1;
end
Aeq=ones(4,4);
Beq=zeros(4,1);
for i=1:n
    Beq(i)=alpha;
end

x = zeros(4,1) ;
x=quadprog(H,[],[],[],Aeq,Beq);

% a revoir



