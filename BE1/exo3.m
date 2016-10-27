BE1 : optimization 

%% FAVIER COUDERC 

%% exo 3 

pas=0.1;
egalitecontrainte=0;

% 2.a. Calculer la fonction objective : f(x) = -x1*x1 - 2*x2*x2
x1 = 0:pas:10;
x2 = 0:pas:10;
% Creer la grille matlab
[x1_grid,x2_grid] = meshgrid(x1,x2) ;

% Fonction objective
y =(x1_grid.^2+2*x2_grid.^2) ;

% Fonction conrainte
g1=(x1^2+x2^2)-64 ;

h=contour(x1_grid,x2_grid,y,20);
hold on
% contour(x1_grid,x2_grid,g1,'k');
% ezplot('(x1^2+x2^2)-64')



