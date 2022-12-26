function guess
%Acerte o número randomico 
%Definindo x 
x = 10;
y = 0.5 
tentativas = ceil(rand()*y*10) %Gera as tentativas aleatoriamente
resp_certa =ceil(rand()*x);
flag = 1;
while flag==1
    guess = input('Digite um número qualquer');
    if guess > resp_certa
        disp('Não acertou, seu número foi alto')
    elseif guess < resp_certa
        disp('Não acertou, seu número foi baixo')
    else
        disp('Acertou')
        flag = 0;
    end
   
end
end