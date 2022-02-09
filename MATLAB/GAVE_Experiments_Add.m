%%%%%%%%%%%%%%%% TEST DEI METODI PER AVE APPLICATI A GAVE %%%%%%%%%%%%%%%%
for i = 1:m
    A5{i} = 20*rand(N)-10;
    x = 2*rand(N,1)-1;
    b5{i} = A5{i}*x-abs(x);
end
tic;
for i = 1:m
    Inv = inv(B1{i});
    A1{i} = Inv*A1{i};
    b1{i} = Inv*b1{i};
    Inv = inv(B2{i});
    A2{i} = Inv*A2{i};
    b2{i} = Inv*b2{i};
    Inv = inv(B3{i});
    A3{i} = Inv*A3{i};
    b3{i} = Inv*b3{i};
    Inv = inv(B4{i});
    A4{i} = Inv*A4{i};
    b4{i} = Inv*b4{i};
end
inv_time = toc;         %total time to transform 400 GAVEs to AVEs
Picard_AVE_Experiments;
MNG_Experiments;
MNM_AVE_Experiments;
MFA_Experiments;