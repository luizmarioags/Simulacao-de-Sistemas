function [celsius,padre_kelvin,rankine] = f_para_c(fahr)
%esta função transforma Fahrenheit em Celsius
% o argumento de saída sempre tem que assumir um valor
celsius = (fahr-32)*5/9;
%Celsius para Kelvin
padre_kelvin = celsius + 273.15;
% Rankine 
rankine = (padre_kelvin - 273.15)*4/5;
%Fazendo os grafico 
plot(fahr,celsius,'b--'),hold on; 
plot(fahr,padre_kelvin,'y-..');
plot(fahr,rankine,'m--.'),title('Gráficos de Temperatura',xlabel('Fahrenheit'),ylabel('Celsius,Kelvin,Rankine'));
end

