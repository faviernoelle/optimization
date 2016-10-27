BE1 : optimization 

%% FAVIER COUDERC 

%% clean matlab

clear
clc
close all

%% exo 4

%% Clean matlab 


pas=0.1;

% 2.a. Calculer la fonction objective : f(x) = x2
x1 = 0:pas:10;
x2 = 0:pas:10;
% Creer la grille matlab
[x1_grid,x2_grid] = meshgrid(x1,x2) ;

% Fonction objective
y=x2_grid;

% Fonction contrainte

% contour(x1_grid,x2_grid,y,20);
hold on
% contour(x1_grid,x2_grid,g1,'k');
ezplot('(x1+1)*(x1+1)+x2*x2-1')
ezplot('(x1-2)*(x1-2)+x2*x2-4')
ezplot('4*x2_-x1-2')
ezplot('x1+0*x2+1')