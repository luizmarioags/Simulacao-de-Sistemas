function guess
%Acerte o n�mero randomico 
%Definindo x 
x = 10;
y = 0.5 
tentativas = ceil(rand()*y*10) %Gera as tentativas aleatoriamente
resp_certa =ceil(rand()*x);
flag = 1;
while flag==1
    guess = input('Digite um n�mero qualquer');
    if guess > resp_certa
        disp('N�o acertou, seu n�mero foi alto')
    elseif guess < resp_certa
        disp('N�o acertou, seu n�mero foi baixo')
    else
        disp('Acertou')
        flag = 0;
    end
   
end
end