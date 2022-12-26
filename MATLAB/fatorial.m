function fatorial_n = fatorial(n)
%Essa função calcula o fatorial de n 
if(n == 0) 
    fatorial_n = 1;
else
    fatorial_n = fatorial(n-1)*n;
end 
end

