function count = count_axles(data,target)
%Data é a entrada, target é o numero desejado de eixos
%Count = nomedafuncao(input values)
match = data==target;
count = sum(match);

end
