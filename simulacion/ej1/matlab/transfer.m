syms r c l d s vs;

Aon = [ 0 , 0 ; 0, -1/r/c];
Aoff = [ 0 , -1/l ; 1/c, -1/r/c];
Abar = d*Aon + (1-d)*Aoff;
Abar = simplify(Abar);

B = [1/l; 0];
C = [0, 1];
I = eye(2);

Hvs = C*((s*I-Abar)^(-1))*B;

IL = vs/r/(1-d)^2;
VC = vs/(1-d);
x = [IL; VC];

H = C*(s*I-Abar)^(-1)*(Aon-Aoff)*x;