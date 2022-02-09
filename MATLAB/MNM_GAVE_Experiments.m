%Script per gli esperimenti numerici sul Metodo di Newton Modificato per GAVE
N = 1000;
itmax = 100;
m = 100;
omega = 0.7;

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

%MNM: caso 3
mnm_it_2 = zeros(m,1);
mnm_tonvi_2 = 0;              %total numuber of violated instances
mnm_time_2 = zeros(m,1);
mnm_tottime_2 = 0;            %total time
mnm_nonviolatedtime_2 = 0;    %total time for the non violated istances
mnm_totit_2 = 0;              %total number of iterations
mnm_nonviolatedit_2 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNM_GAVE(A2{i}, B2{i}, b2{i}, omega);
    mnm_time_2(i) = toc;
    if (it == itmax)
        mnm_tonvi_2 = mnm_tonvi_2 + 1;
    else
        mnm_nonviolatedtime_2 = mnm_nonviolatedtime_2 + mnm_time_2(i);
        mnm_nonviolatedit_2 = mnm_nonviolatedit_2 + it;
    end
    mnm_it_2(i) = it;    
end
mnm_tottime_2 = sum(mnm_time_2);
mnm_totit_2 = sum(mnm_it_2);

%MNM: caso 3
mnm_it_3 = zeros(m,1);
mnm_tonvi_3 = 0;              %total numuber of violated instances
mnm_time_3 = zeros(m,1);
mnm_tottime_3 = 0;            %total time
mnm_nonviolatedtime_3 = 0;    %total time for the non violated istances
mnm_totit_3 = 0;              %total number of iterations
mnm_nonviolatedit_3 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNM_GAVE(A3{i}, B3{i}, b3{i}, omega);
    mnm_time_3(i) = toc;
    if (it == itmax)
        mnm_tonvi_3 = mnm_tonvi_3 + 1;
    else
        mnm_nonviolatedtime_3 = mnm_nonviolatedtime_3 + mnm_time_3(i);
        mnm_nonviolatedit_3 = mnm_nonviolatedit_3 + it;
    end
    mnm_it_3(i) = it;    
end
mnm_tottime_3 = sum(mnm_time_3);
mnm_totit_3 = sum(mnm_it_3);

%MNM: caso 4
mnm_it_4 = zeros(m,1);
mnm_tonvi_4 = 0;              %total numuber of violated instances
mnm_time_4 = zeros(m,1);
mnm_tottime_4 = 0;            %total time
mnm_nonviolatedtime_4 = 0;    %total time for the non violated istances
mnm_totit_4 = 0;              %total number of iterations
mnm_nonviolatedit_4 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNM_GAVE(A4{i}, B4{i}, b4{i}, omega);
    mnm_time_4(i) = toc;
    if (it == itmax)
        mnm_tonvi_4 = mnm_tonvi_4 + 1;
    else
        mnm_nonviolatedtime_4 = mnm_nonviolatedtime_4 + mnm_time_4(i);
        mnm_nonviolatedit_4 = mnm_nonviolatedit_4 + it;
    end
    mnm_it_4(i) = it;    
end
mnm_tottime_4 = sum(mnm_time_4);
mnm_totit_4 = sum(mnm_it_4);
