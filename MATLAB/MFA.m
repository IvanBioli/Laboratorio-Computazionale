function [x,it] = MFA(A, b, x_0, delta, beta, sigma, rho1, rho2)
    %Definizione delle funzioni ausiliarie
    H = @(x) A*x-abs(x)-b;
    G = @(x,epsilon) A*x-sqrt(x.^2+epsilon^2)-b;
    DG = @(x,epsilon) A-diag(x./sqrt(x.^2+epsilon^2));
    theta = @(x,epsilon) 0.5*(norm(G(x,epsilon))^2);
    Dtheta = @(x,epsilon) DG(x,epsilon)'*G(x,epsilon);
    
    %Passo 0
    x = x_0;
    y = x_0;
    epsilon = 0.0001;
    itmax = 100;
    it = 0;
    
    while (it < itmax)
        %Passo 1
        g = G(y,epsilon);           %Li calcoliamo una volta sola anche per theta
        dg = DG(y,epsilon);
        d = -dg\g;                  %Assumiamo che il sistema abbia soluzione
        if (-d'*dg'*g < rho1*norm(d)^rho2)
            d = -dg'*g;
        end
        
        %Passo 2
        l = 0;
        while ((theta(y+(delta^l)*d,epsilon)>(0.5*(norm(g)^2)+sigma*(delta^l)*g'*dg*d)) && (l < 30))
            l = l+1;
        end
        if (l == 20)
            it = itmax;
            break;
        end
        if((norm(G(y+(delta^l)*d,epsilon))>epsilon*beta) && (norm(H(y+(delta^l)*d))>0.5*norm(H(x))))
            y = y+(delta^l)*d;
        else
            y = y+(delta^l)*d;
            x = y;
            epsilon = min(0.5*epsilon, 0.5*norm(H(x))^2);
            %Condizione di terminazione per convergenza
            if (norm(A*x-abs(x)-b, inf)<1e-6)
                break;
            end
        end
        it = it+1;
    end
end

