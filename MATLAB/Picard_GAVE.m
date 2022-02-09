function [x,it] = Picard_GAVE(A, B, b)
    itmax = 100; %numero massimo di iterazioni
    Inv = inv(A);
    x = Inv*b;
    for it = 1:itmax
        x = Inv*(B*abs(x)+b);
        if (norm(A*x-B*abs(x)-b)<1e-6)      %Condizione di stop 
            break;
        end
    end
end

