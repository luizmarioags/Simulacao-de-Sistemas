function count = count_axles(data,target)
%Data � a entrada, target � o numero desejado de eixos
%Count = nomedafuncao(input values)
match = data==target;
count = sum(match);

end
