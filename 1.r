#nomor 1

#1a
x <- 3 
p <- 0.20 #peluang
prob = dgeom(x, p)
prob

#1b nilai rata rata 10000 data random
mean(rgeom(n = 10000, prob = p) == 3)

rataan <- function(p) {
  return (1/p)
}

varian <- function(p) {
  return ((1-p)/p*p)
}


hist(rgeom(n, prob = p), main = 'Histogram Geometrik') #1d
paste("1e: rata-rata = ", rataan(p), ", varian = ", varian(p)) #1b