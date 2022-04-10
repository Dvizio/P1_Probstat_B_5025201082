#nomor 4
#4a
x <- 2
v <- 10
#build in function chi square distribution
dchisq(x, v)


#membuat histogram chi square dengan 100 data random
set.seed(1)
hist(rchisq(100, v)) #4b

#menggunakan rumus chi square rata rata dan varian 
paste("4c: rata-rata = ", v, ", varian = ", 2*v) #4c
