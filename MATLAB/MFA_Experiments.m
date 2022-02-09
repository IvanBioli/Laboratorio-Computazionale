%Script per gli esperimenti numerici sul Metodo delle Funzioni Approssimanti
N = 1000;
itmax = 100;
m = 100;
x_0 = zeros(N,1);
delta = 0.5;
beta = 1;
sigma = 0.0005;
rho1 = 1e-8;
rho2 = 2.1;

%MFA: caso 1
mfa_it_1 = zeros(m,1);
mfa_tonvi_1 = 0;              %total numuber of violated instances
mfa_time_1 = zeros(m,1);
mfa_tottime_1 = 0;            %total time
mfa_nonviolatedtime_1 = 0;    %total time for the non violated istances
mfa_totit_1 = 0;              %total number of iterations
mfa_nonviolatedit_1 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MFA(A1{i}, b1{i}, x_0, delta, beta, sigma, rho1, rho2);
    mfa_time_1(i) = toc;
    if (it == itmax)
        mfa_tonvi_1 = mfa_tonvi_1 + 1;
    else
        mfa_nonviolatedtime_1 = mfa_nonviolatedtime_1 + mfa_time_1(i); 
        mfa_nonviolatedit_1 = mfa_nonviolatedit_1 + it;
    end
    mfa_it_1(i) = it;    
end
mfa_tottime_1 = sum(mfa_time_1);
mfa_totit_1 = sum(mfa_it_1);

%MFA: caso 2
mfa_it_2 = zeros(m,1);
mfa_tonvi_2 = 0;              %total numuber of violated instances
mfa_time_2 = zeros(m,1);
mfa_tottime_2 = 0;            %total time
mfa_nonviolatedtime_2 = 0;    %total time for the non violated istances
mfa_totit_2 = 0;              %total number of iterations
mfa_nonviolatedit_2 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MFA(A2{i}, b2{i}, x_0, delta, beta, sigma, rho1, rho2);
    mfa_time_2(i) = toc;
    if (it == itmax)
        mfa_tonvi_2 = mfa_tonvi_2 + 1;
    else
        mfa_nonviolatedtime_2 = mfa_nonviolatedtime_2 + mfa_time_2(i); 
        mfa_nonviolatedit_2 = mfa_nonviolatedit_2 + it;
    end
    mfa_it_2(i) = it;    
end
mfa_tottime_2 = sum(mfa_time_2);
mfa_totit_2 = sum(mfa_it_2);

%MFA: caso 3
mfa_it_3 = zeros(m,1);
mfa_tonvi_3 = 0;              %total numuber of violated instances
mfa_time_3 = zeros(m,1);
mfa_tottime_3 = 0;            %total time
mfa_nonviolatedtime_3 = 0;    %total time for the non violated istances
mfa_totit_3 = 0;              %total number of iterations
mfa_nonviolatedit_3 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MFA(A3{i}, b3{i}, x_0, delta, beta, sigma, rho1, rho2);
    mfa_time_3(i) = toc;
    if (it == itmax)
        mfa_tonvi_3 = mfa_tonvi_3 + 1;
    else
        mfa_nonviolatedtime_3 = mfa_nonviolatedtime_3 + mfa_time_3(i); 
        mfa_nonviolatedit_3 = mfa_nonviolatedit_3 + it;
    end
    mfa_it_3(i) = it;    
end
mfa_tottime_3 = sum(mfa_time_3);
mfa_totit_3 = sum(mfa_it_3);

%MFA: caso 4
mfa_it_4 = zeros(m,1);
mfa_tonvi_4 = 0;              %total numuber of violated instances
mfa_time_4 = zeros(m,1);
mfa_tottime_4 = 0;            %total time
mfa_nonviolatedtime_4 = 0;    %total time for the non violated istances
mfa_totit_4 = 0;              %total number of iterations
mfa_nonviolatedit_4 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MFA(A4{i}, b4{i}, x_0, delta, beta, sigma, rho1, rho2);
    mfa_time_4(i) = toc;
    if (it == itmax)
        mfa_tonvi_4 = mfa_tonvi_4 + 1;
    else
        mfa_nonviolatedtime_4 = mfa_nonviolatedtime_4 + mfa_time_4(i); 
        mfa_nonviolatedit_4 = mfa_nonviolatedit_4 + it;
    end
    mfa_it_4(i) = it;    
end
mfa_tottime_4 = sum(mfa_time_4);
mfa_totit_4 = sum(mfa_it_4);

%MFA: caso 5
mfa_it_5 = zeros(m,1);
mfa_tonvi_5 = 0;              %total numuber of violated instances
mfa_time_5 = zeros(m,1);
mfa_tottime_5 = 0;            %total time
mfa_nonviolatedtime_5 = 0;    %total time for the non violated istances
mfa_totit_5 = 0;              %total number of iterations
mfa_nonviolatedit_5 = 0;      %total number of iterations for the non violated istances
for i = 1:m
    tic;
    [x,it] = MFA(A5{i}, b5{i}, x_0, delta, beta, sigma, rho1, rho2);
    mfa_time_5(i) = toc;
    if (it == itmax)
        mfa_tonvi_5 = mfa_tonvi_5 + 1;
    else
        mfa_nonviolatedtime_5 = mfa_nonviolatedtime_5 + mfa_time_5(i); 
        mfa_nonviolatedit_5 = mfa_nonviolatedit_5 + it;
    end
    mfa_it_5(i) = it;    
end
mfa_tottime_5 = sum(mfa_time_5);
mfa_totit_5 = sum(mfa_it_5);