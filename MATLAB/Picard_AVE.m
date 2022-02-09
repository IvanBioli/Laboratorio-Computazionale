function [x,it] = Picard_AVE(A, b)
    itmax = 100; %numero massimo di iterazioni
    Inv = inv(A);
    x = Inv*b;
    for it = 1:itmax
        x = Inv*(abs(x)+b);
        if (norm(A*x-abs(x)-b)<1e-6)      %Condizione di stop
            break;
        end
    end
end
