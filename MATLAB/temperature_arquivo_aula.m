function temperature_arquivo_aula
% escrevendo arquivos
F = -40:5:100;
C =(F - 32)*5/9;
%Criando um vetor 
T = [F;C]; %Primeira Coluna Fahrenheit e segunda Celsius
%Criando o arquivo
fid=fopen('Temperature.Table','w'); 
fprintf(fid,'Temperature Table\n');
fprintf(fid,'~~~~~~~~~~~~~~~~~~~~\n')
fprintf(fid,'Fahrenheit    Celsius\n')
fprintf(fid,'%4i   %8.2f\n',T);
fclose(fid);
end

