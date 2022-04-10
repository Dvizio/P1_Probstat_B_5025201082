#nomor 3
#3a
x <- 6 #6 bayi akan lahir
avge <- 4.5 #rata rata
#built in function poisson distribution
dpois(x,avge)

set.seed(1)
hist(rpois(365, avge)) #3b


rata <- 6
paste("3d: rata-rata = ", rata, ", varian = ", rata) #3d
