%%%%% COSTRUZIONE DELLE GAVEs %%%%%%
N = 1000;
m = 100;
%Caso 1: valori casuali in [-10,10] per A e B, b soluzione particolare
for i = 1:m
    A1{i} = 20*rand(N)-10;
    B1{i} = 20*rand(N)-10;
    x = 2*rand(N,1)-1;
    b1{i} = A1{i}*x-B1{i}*abs(x);
end

%Caso 2: valori casuali in [-10,10] per A, in [-1,1] per B con riscalamento
%finale per avere rho(abs(inv(A)*B))<1, b soluzione particolare.
for i = 1:m
    A2{i} = 20*rand(N)-1;
    B2{i} = 2*rand(N)-1;
    B2{i} = rand/abs(eigs(abs(inv(A2{i})*B2{i}),1))*B2{i};
    x = 2*rand(N,1)-1;
    b2{i} = A2{i}*x-B2{i}*abs(x);
end

%Caso 3: valori casuali in [-10,10] per A, in [-1,1] per B con riscalamento
%finale per avere ||inv(A)|| ||B|| < 1, b soluzione particolare.
for i = 1:m
    A3{i} = 20*rand(N)-10;
    B3{i} = 2*rand(N)-1;
    B3{i} = rand/(norm(B3{i})*norm(inv(A3{i})))*B3{i};
    x = 2*rand(N,1)-1;
    b3{i} = A3{i}*x-B3{i}*abs(x);
end

%Caso 4: A matrice simmetrica definita positiva con minimo autovalore > 
%norm(B,2), b soluzione casuale
for i = 1:m
    A4{i} = rand(N);
    B4{i} = rand(N);
    A4{i} = A4{i}'*A4{i}+(norm(B4{i},2)+rand)*eye(N);
    x = 2*rand(N,1)-1;
    b4{i} = A4{i}*x-B4{i}*abs(x);
end
