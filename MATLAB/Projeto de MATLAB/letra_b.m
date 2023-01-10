function letra_b
for N=1:100000
    %Adicionando incertezas ao valor do custo com pessoal
    X = rand(1,N); %Definindo um número randômico x com uniforme de 0 ate 1 
    %Esse numero randomico será o indexador da variavel custo_pessoal
    if X <= 0.4
        custo_pessoal = 45;
    elseif X <= 0.6
        custo_pessoal = 44;
    elseif X <= 0.8
        custo_pessoal = 46;
    elseif X <= 0.9
        custo_pessoal = 43;
    else 
        custo_pessoal = 47;
    end
    %O Custo por partes é dado por uma uniforme com valor minimo 80 e max 100
    custo_partes =  80 + (20)*rand(1,N);
    %Demanda dada por uma normal com média 15 e desvio padrao de 4,5
    demanda = normrnd(15,4.5,[1,N]);
    %Calculando os custos considerando o custo admnistrativo e de propaganda cte
    custo_adm = 400;
    custo_propaganda = 600;
    %Montando uma matriz de custos 
    custos = [custo_pessoal custo_partes];
    %Calculando o custo total
    Custo_Total = demanda.*(sum(custos)) + custo_adm + custo_propaganda;
    %Definindo a receita 
    preco_venda = 249 ;
    receita = demanda.*preco_venda;
end
%Calculando o lucro potencial
lucro = receita - Custo_Total;
% Cálculo do Lucro Médio
lucro_medio = mean(lucro);
[Minimo_Lucro,Maximo_Lucro] = bounds(lucro)
%Criando o arquivo de saida 
%Primeiramente iremos criar um vetor com os custos, receita e lucro 
V = [lucro_medio];
%Criando o arquivo
fid=fopen('Letra_B.Table','w'); 
fprintf(fid,'Letra B do Projeto\n');
fprintf(fid,'~~~~~~~~~~~~~~~~~~~~\n')
fprintf(fid,'Lucro Médio    Lucro Mínimo         Lucro Máximo\n')
fprintf(fid,'%4i   %8.2f\n',V);
fclose(fid);
%Fazendo os grafico 
plot(Custo_Total,lucro,'r-'),title('Gráficos de Lucro x Custo Total',xlabel('Custo Total'),ylabel('Lucro'))
end

