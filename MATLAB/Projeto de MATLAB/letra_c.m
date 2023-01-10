function letra_c
%Para esse caso iremos definir um intervalo entre 230 e 270 para o preço
p = 230:1:1000; %Intervalo para os preços
V = length(p); %Tamanho de P
tx_elasticidade = (p/249).^(-0.72); %Calculo da Elasticidade
demanda_base = 15; %Demanda Base
nva_demanda = demanda_base.*tx_elasticidade;
%Cálculo do Novo custo com pessoal 
custo_com_pessoal = 45;
nvo_custo_com_pessoal = custo_com_pessoal.*((nva_demanda/demanda_base).^(-2.2))
%O Custo por partes é dado por uma uniforme com valor minimo 80 e max 100
custo_partes =  80 + (20).*rand(1,V);
%Calculando os custos considerando o custo admnistrativo e de propaganda cte
custo_adm = 400;
custo_propaganda = 600;
%Montando uma matriz de custos 
custos = [nvo_custo_com_pessoal custo_partes];
%Calculando o custo total
Custo_Total = nva_demanda*(sum(custos)) + custo_adm + custo_propaganda;
%Definindo a receita 
receita = nva_demanda.*p;
%Calculo do Lucro 
lucro = receita - Custo_Total;
%Fazendo os grafico 
plot(p,lucro,'r-'),title('Gráficos de Lucro x Preço',xlabel('Preço'),ylabel('Lucro'))
end

