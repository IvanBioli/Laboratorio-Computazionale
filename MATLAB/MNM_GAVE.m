function [x,it] = MNM_GAVE(A, B, b, omega)
    itmax = 100;
    x = A\b;
    n = size(A,1);
    Inv = inv(A+omega*eye(n));
    for it = 1:itmax
        x = Inv*(omega*x+B*abs(x)+b);
        if (norm(A*x-B*abs(x)-b)<1e-6)      %Condizione di stop
            break;
        end
    end
end

