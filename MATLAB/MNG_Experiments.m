%Script per gli esperimenti numerici sul Metodo di Newton Generalizzato
N = 1000;
itmax = 100;
m = 100;
x_0 = zeros(N,1);

%MNG: caso 1
mng_it_1 = zeros(m,1);
mng_tonvi_1 = 0;              %total numuber of violated instances
mng_time_1 = zeros(m,1);
mng_tottime_1 = 0;            %total time
mng_nonviolatedtime_1 = 0;    %total time for the non violated istances
mng_totit_1 = 0;              %total number of iterations
mng_nonviolatedit_1 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNG(A1{i}, b1{i}, x_0);
    mng_time_1(i) = toc;
    if (it == itmax)
        mng_tonvi_1 = mng_tonvi_1 + 1;
    else
        mng_nonviolatedtime_1 = mng_nonviolatedtime_1 + mng_time_1(i);
        mng_nonviolatedit_1 = mng_nonviolatedit_1 + it;
    end
    mng_it_1(i) = it;    
end
mng_tottime_1 = sum(mng_time_1);
mng_totit_1 = sum(mng_it_1);

%MNG: caso 2
mng_it_2 = zeros(m,1);
mng_tonvi_2 = 0;              %total numuber of violated instances
mng_time_2 = zeros(m,1);
mng_tottime_2 = 0;            %total time
mng_nonviolatedtime_2 = 0;    %total time for the non violated istances
mng_totit_2 = 0;              %total number of iterations
mng_nonviolatedit_2 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNG(A2{i}, b2{i}, x_0);
    mng_time_2(i) = toc;
    if (it == itmax)
        mng_tonvi_2 = mng_tonvi_2 + 1;
    else
        mng_nonviolatedtime_2 = mng_nonviolatedtime_2 + mng_time_2(i);
        mng_nonviolatedit_2 = mng_nonviolatedit_2 + it;
    end
    mng_it_2(i) = it;    
end
mng_tottime_2 = sum(mng_time_2);
mng_totit_2 = sum(mng_it_2);

%MNG: caso 3
mng_it_3 = zeros(m,1);
mng_tonvi_3 = 0;              %total numuber of violated instances
mng_time_3 = zeros(m,1);
mng_tottime_3 = 0;            %total time
mng_nonviolatedtime_3 = 0;    %total time for the non violated istances
mng_totit_3 = 0;              %total number of iterations
mng_nonviolatedit_3 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNG(A3{i}, b3{i}, x_0);
    mng_time_3(i) = toc;
    if (it == itmax)
        mng_tonvi_3 = mng_tonvi_3 + 1;
    else
        mng_nonviolatedtime_3 = mng_nonviolatedtime_3 + mng_time_3(i);
        mng_nonviolatedit_3 = mng_nonviolatedit_3 + it;
    end
    mng_it_3(i) = it;    
end
mng_tottime_3 = sum(mng_time_3);
mng_totit_3 = sum(mng_it_3);

%MNG: caso 4
mng_it_4 = zeros(m,1);
mng_tonvi_4 = 0;              %total numuber of violated instances
mng_time_4 = zeros(m,1);
mng_tottime_4 = 0;            %total time
mng_nonviolatedtime_4 = 0;    %total time for the non violated istances
mng_totit_4 = 0;              %total number of iterations
mng_nonviolatedit_4 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNG(A4{i}, b4{i}, x_0);
    mng_time_4(i) = toc;
    if (it == itmax)
        mng_tonvi_4 = mng_tonvi_4 + 1;
    else
        mng_nonviolatedtime_4 = mng_nonviolatedtime_4 + mng_time_4(i);
        mng_nonviolatedit_4 = mng_nonviolatedit_4 + it;
    end
    mng_it_4(i) = it;    
end
mng_tottime_4 = sum(mng_time_4);
mng_totit_4 = sum(mng_it_4);

%MNG: caso 5
mng_it_5 = zeros(m,1);
mng_tonvi_5 = 0;              %total numuber of violated instances
mng_time_5 = zeros(m,1);
mng_tottime_5 = 0;            %total time
mng_nonviolatedtime_5 = 0;    %total time for the non violated istances
mng_totit_5 = 0;              %total number of iterations
mng_nonviolatedit_5 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MNG(A5{i}, b5{i}, x_0);
    mng_time_5(i) = toc;
    if (it == itmax)
        mng_tonvi_5 = mng_tonvi_5 + 1;
    else
        mng_nonviolatedtime_5 = mng_nonviolatedtime_5 + mng_time_5(i);
        mng_nonviolatedit_5 = mng_nonviolatedit_5 + it;
    end
    mng_it_5(i) = it;    
end
mng_tottime_5 = sum(mng_time_5);
mng_totit_5 = sum(mng_it_5);