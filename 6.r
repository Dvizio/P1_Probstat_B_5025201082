#nomor 6
#6a
set.seed(1)
standev <- 8 #standar deviasi
x <- rnorm(100, 50, standev) #100 variabel acak dengan median 50

plot(x)

#6b = Generate Histogram dari Distribusi Normal dengan breaks 50 + format penamaan
hist(x, main="5025201082_Farrel Emerson_Probstat_B_DNhistogram", breaks=50, col="lightblue", border="white", xlim=c(30,70))

#6c = Mencari Nilai Varian
paste("nilai varian= ", standev^2)
