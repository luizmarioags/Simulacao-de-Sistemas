function count_axles_2
%Argumentos de entrada 
data = [ 2 3 4 5 6 1 2 3];
target = 3; %Supondo 3
match = data==target;
count = sum(match)
end