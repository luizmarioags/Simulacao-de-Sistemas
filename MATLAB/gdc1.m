function z = gdc1(x,y)
if y == 0
    z = x
else
    z = gdc1(y,rem(x,y))
end 
y 
return
