function fatorial_n = fatorial(n)
%Essa fun��o calcula o fatorial de n 
if(n == 0) 
    fatorial_n = 1;
else
    fatorial_n = fatorial(n-1)*n;
end 
end

