% Steve Brunton Control Bootcamp - Linear Systems
%% State-Space
A = [-2, -4;
     -1, -1];
B = [0;
     1];
C = [1, 0];
D = [0];

sys = ss(A,B,C,D);

% Eigenvectors and Eigenvalues
[T, D] = eig(A);
fprintf('Eigenvalues of A:\n')
for i = 1:size(D)
    fprintf('lambda %i: %f\n',i,D(i,i));
end

% Zustandsvektor 
x0 = [5, 3]'; % Anfangswerte

% Transformation zu Eigenvektor Basis
% x = T*z;
z0 = T\x0;    % z = T^-1*x

% Calculate z for 

for t = 0:dt:10
    z = exp(D*t)*z0;
end
