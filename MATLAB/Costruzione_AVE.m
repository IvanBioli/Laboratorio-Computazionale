%%%%% COSTRUZIONE DELLE AVEs %%%%%%
N = 1000;
m = 100;
%Caso 1: valori casuali in [-10,10] per A, valori casuali in [-1,1] per b
for i = 1:m
    A1{i} = 20*rand(N)-10;
    b1{i} = 2*rand(N,1)-1;
end

%Caso 2: valori casuali in [-10,10] per A con riscalamento per valsing > 1, 
%valori casuali in [-1,1] per b
for i = 1:m
    A2{i} = 20*rand(N)-10;
    sigma = svds(A2{i},1,'smallest');
    A2{i} = 1/(rand*sigma)*A2{i};
    b2{i} = 2*rand(N,1)-1;
end

%Caso 3: ipotesi per 2^n soluzioni
for i = 1:m
    A3{i} = 2*rand(N)-1;
    b3{i} = rand(N,1)-1;
    gamma = min(abs(b3{i}))/max(abs(b3{i})); 
    A3{i} = (rand*gamma/(2*norm(A3{i},Inf)))*A3{i};
end


%Caso 4: matrice simmetrica definita positiva con minimo autovalore > 1, b
%soluzione casuale
for i = 1:m
    A4{i} = rand(N);
    A4{i} = A4{i}'*A4{i}+(1+rand)*eye(N);
    x = 2*rand(N,1)-1;
    b4{i} = A4{i}*x-abs(x);
end

%Caso 5: valori casuali in [-10,10] per A con riscalamento per 
%rho(abs(inv(A)) < 1, valori casuali in [-1,1] per b
for i = 1:m
    A5{i} = 20*rand(N)-10;
    rho = abs(eigs(abs(inv(A5{i})),1));
    A5{i} = (rho/rand)*A5{i};
    b5{i} = 2*rand(N,1)-1;
end




