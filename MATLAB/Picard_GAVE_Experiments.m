%Script per gli esperimenti numerici sul Metodo delle Iterate di Picard per GAVE
itmax = 100;
m = 100;

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

%Metodo delle Iterate di Picard: caso 2
picard_it_2 = zeros(m,1);
picard_tonvi_2 = 0;              %total numuber of violated instances
picard_time_2 = zeros(m,1);
picard_tottime_2 = 0;            %total time
picard_nonviolatedtime_2 = 0;    %total time for the non violated istances
picard_totit_2 = 0;              %total number of iterations
picard_nonviolatedit_2 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = Picard_GAVE(A2{i}, B2{i}, b2{i});
    picard_time_2(i) = toc;
    if (it == itmax)
        picard_tonvi_2 = picard_tonvi_2 + 1;
    else
        picard_nonviolatedtime_2 = picard_nonviolatedtime_2 + picard_time_2(i); 
        picard_nonviolatedit_2 = picard_nonviolatedit_2 + it;
    end
    picard_it_2(i) = it;    
end
picard_tottime_2 = sum(picard_time_2);
picard_totit_2 = sum(picard_it_2);

%Metodo delle Iterate di Picard: caso 3
picard_it_3 = zeros(m,1);
picard_tonvi_3 = 0;              %total numuber of violated instances
picard_time_3 = zeros(m,1);
picard_tottime_3 = 0;            %total time
picard_nonviolatedtime_3 = 0;    %total time for the non violated istances
picard_nonviolatedit_3 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = Picard_GAVE(A3{i}, B3{i}, b3{i});
    picard_time_3(i) = toc;
    if (it == itmax)
        picard_tonvi_3 = picard_tonvi_3 + 1;
    else
        picard_nonviolatedtime_3 = picard_nonviolatedtime_3 + picard_time_3(i); 
        picard_nonviolatedit_3 = picard_nonviolatedit_3 + it;
    end
    picard_it_3(i) = it;    
end
picard_tottime_3 = sum(picard_time_3);
picard_totit_3 = sum(picard_it_3);

%Metodo delle Iterate di Picard: caso 4
picard_it_4 = zeros(m,1);
picard_tonvi_4 = 0;              %total numuber of violated instances
picard_time_4 = zeros(m,1);
picard_tottime_4 = 0;            %total time
picard_nonviolatedtime_4 = 0;    %total time for the non violated istances
picard_totit_4 = 0;              %total number of iterations
picard_nonviolatedit_4 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = Picard_GAVE(A4{i}, B4{i}, b4{i});
    picard_time_4(i) = toc;
    if (it == itmax)
        picard_tonvi_4 = picard_tonvi_4 + 1;
    else
        picard_nonviolatedtime_4 = picard_nonviolatedtime_4 + picard_time_4(i); 
        picard_nonviolatedit_4 = picard_nonviolatedit_4 + it;
    end
    picard_it_4(i) = it;    
end
picard_tottime_4 = sum(picard_time_4);
picard_totit_4 = sum(picard_it_4);