#nomor 2
p <- 0.2 #peluang sembuh
x <- 4 
n <- 20 #jumlah pasien

dbinom(x,n,p) #2a

#membuat histogram dengan fungsi
hist(dbinom(0:10,n,p)) #2b

rataan <- function(p) {
  return (1/p)
}

varian <- function(p) {
  return ((1-p)/p*p)
}

paste("2c: rata-rata = ", rataan(p), ", varian = ", varian(p)) #2c