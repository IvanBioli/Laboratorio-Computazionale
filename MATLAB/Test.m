%%%%% COSTRUZIONE DELLE GAVEs %%%%%%
N = 1000;
m = 100;
itmax = 100;
omega = 0.7;

%Caso 1: valori casuali in [-10,10] per A e B, b soluzione particolare
for i = 1:m
    A1{i} = 20*rand(N)-10;
    B1{i} = 2*rand(N)-1;
    x = 2*rand(N,1)-1;
    b1{i} = A1{i}*x-B1{i}*abs(x);
end

%Metodo delle Iterate di Picard: caso 1
picard_it_1 = zeros(m,1);
picard_tonvi_1 = 0;              %total numuber of violated instances
picard_time_1 = zeros(m,1);
picard_tottime_1 = 0;            %total time
picard_nonviolatedtime_1 = 0;    %total time for the non violated istances
picard_totit_1 = 0;              %total number of iterations
picard_nonviolatedit_1 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = Picard_GAVE(A1{i}, B1{i}, b1{i});
    picard_time_1(i) = toc;
    if (it == itmax)
        picard_tonvi_1 = picard_tonvi_1 + 1;
    else
        picard_nonviolatedtime_1 = picard_nonviolatedtime_1 + picard_time_1(i);
        picard_nonviolatedit_1 = picard_nonviolatedit_1 + it;
    end
    picard_it_1(i) = it;    
end
picard_tottime_1 = sum(picard_time_1);
picard_totit_1 = sum(picard_it_1);

%MNM: caso 1
mnm_it_1 = zeros(m,1);
mnm_tonvi_1 = 0;              %total numuber of violated instances
mnm_time_1 = zeros(m,1);
mnm_tottime_1 = 0;            %total time
mnm_nonviolatedtime_1 = 0;    %total time for the non violated istances
mnm_totit_1 = 0;              %total number of iterations
mnm_nonviolatedit_1 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNM_GAVE(A1{i}, B1{i}, b1{i}, omega);
    mnm_time_1(i) = toc;
    if (it == itmax)
        mnm_tonvi_1 = mnm_tonvi_1 + 1;
    else
        mnm_nonviolatedtime_1 = mnm_nonviolatedtime_1 + mnm_time_1(i);
        mnm_nonviolatedit_1 = mnm_nonviolatedit_1 + it;
    end
    mnm_it_1(i) = it;    
end
mnm_tottime_1 = sum(mnm_time_1);
mnm_totit_1 = sum(mnm_it_1);