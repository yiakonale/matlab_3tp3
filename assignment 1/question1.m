f = SimpleFunctions();
n = -10:10;

% a. x[n] = u[n] − 2u[n − 1] + u[n − 4]
%ex = f.unitstep(n) - 2*f.unitstep(n-1) + f.unitstep(n-4);

% b. x[n] = (n + 2)u[n + 2] − 2u[n] − nu[n − 4]
%ex = (n+2).*f.unitstep(n+2) - 2*f.unitstep(n) - n.*f.unitstep(n-4);

%c. x[n] = δ[n + 1] − δ[n] + u[n + 1] − u[n − 2]
%ex = f.delta(n + 1) - f.delta(n) + f.unitstep(n+1) - f.unitstep(n - 2);

%d. x[n] = e^(0.8n)u[n + 1] + u[n]
ex = exp(0.8*n).*f.unitstep(n+1) + f.unitstep(n);

stem(n, ex, "LineWidth", 3);
%xlim([0 10]);
%ylim([-0.4 0.8]);

exportgraphics(gcf, 'filename_you_want.jpg');