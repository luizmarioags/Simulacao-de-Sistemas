function letra_a
%Definindo os custos que nesse caso são fixos
custos = 150; %Soma dos custos com pessoal e partes e por unidade
custo_adm = 400;
custo_propaganda = 600;
%Definindo a demanda 
demanda = 15000;
%Definindo as receitas 
preco_venda = 249;
receita = demanda*preco_venda;
%Calculando os custos totais (incluindo a quantidade)
Custo_Total = demanda*(custos) + custo_adm + custo_propaganda;
%Calculando o lucro potencial 
lucro = receita - Custo_Total;
%Criando o arquivo de saida 
%Primeiramente iremos criar um vetor com os custos, receita e lucro 
V = [receita;Custo_Total;lucro];
%Criando o arquivo
fid=fopen('Letra_A.Table','w'); 
fprintf(fid,'Letra A do Projeto\n');
fprintf(fid,'~~~~~~~~~~~~~~~~~~~~\n')
fprintf(fid,'Receita    Custos         Lucro\n')
fprintf(fid,'%4i   %8.2f\n',V);
fclose(fid);
end

