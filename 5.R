#nomor 5
set.seed(1)
#5a
lamb <- 3
dexp(lamb) #build in function eksponensial

#5b membuat histogram untuk 10 , 100, 1000, dan 10000 bilangan random
set.seed(3)
hist(rexp(10))
set.seed(3)
hist(rexp(100))
set.seed(3)
hist(rexp(1000))
set.seed(3)
hist(rexp(10000))

#5c
#rumus rata rata eksponensial
rataan <- function(lamb){
  return (1/lamb)
}
rataan(lamb) 
#rumus varian eksponensial
varian <- function(lamb){
  return (1/(lamb*lamb))
}
varian(lamb) 
paste("5c: rata-rata = ", rataan(lamb), ", varian = ", varian(lamb)) #5c



