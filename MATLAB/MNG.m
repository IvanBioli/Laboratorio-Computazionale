function [x,it] = MNG(A, b, x_0)
    itmax = 100;
    x = x_0;
    for it = 1:itmax
        x = (A-diag(sign(x)))\b;
        if (norm(A*x-abs(x)-b)<1e-6)      %Condizione di stop
            break;
        end
    end
end

