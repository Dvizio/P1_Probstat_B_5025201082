# P1_Probstat_B_5025201082

Nama : Farrel Emerson
NRP : 5025201082
Probstat : B

###Nomor 1
####1a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?

```r
#1a
x <- 3 
p <- 0.20 #peluang
prob = dgeom(x, p)
prob
```
maka hasil nya berupa
![image](https://user-images.githubusercontent.com/82019030/162618835-c5704fbf-0425-4605-ba3c-2822472060ff.png)

####1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```r
#1b nilai rata rata 10000 data random
mean(rgeom(n = 10000, prob = p) == 3)
```
maka hasilnya berupa 
![image](https://user-images.githubusercontent.com/82019030/162618918-5d692ebc-c16a-46ad-967b-309f4457de8d.png)

####1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
Pada poin a nilai nya sama, sedangkan b nilainya berubah ubah karena data nya random

####1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```r
hist(rgeom(n, prob = p), main = 'Histogram Geometrik') #1d
```
dengan histogram
![image](https://user-images.githubusercontent.com/82019030/162619048-51ed2ce1-4973-439f-8555-5b8be51c1806.png)

####1e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```r

rataan <- function(p) {
  return (1/p)
}

varian <- function(p) {
  return ((1-p)/p*p)
}
paste("1e: rata-rata = ", rataan(p), ", varian = ", varian(p)) #1e
```
maka hasil yang didapat 
![image](https://user-images.githubusercontent.com/82019030/162619123-74d35845-886a-4018-8ee5-97e215348515.png)
