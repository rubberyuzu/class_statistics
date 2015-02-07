tomato <- c(6,16,10,14,24,8)
banana <- c(1,10,5,15,20,3)

t.test(tomato, banana, var=T)

D <- c(5,6,5,-1,4,5)
t.test(D, mu=0)