# P1_Probstat_B_5025201082

Nama : Farrel Emerson
NRP : 5025201082
Probstat : B

### Nomor 1
#### 1a
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

#### 1b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```r
#1b nilai rata rata 10000 data random
mean(rgeom(n = 10000, prob = p) == 3)
```
maka hasilnya berupa 

![image](https://user-images.githubusercontent.com/82019030/162618918-5d692ebc-c16a-46ad-967b-309f4457de8d.png)

#### 1c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
Pada poin a nilai nya sama, sedangkan b nilainya berubah ubah karena data nya random

#### 1d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```r
hist(rgeom(n, prob = p), main = 'Histogram Geometrik') #1d
```
dengan histogram

![image](https://user-images.githubusercontent.com/82019030/162619048-51ed2ce1-4973-439f-8555-5b8be51c1806.png)

#### 1e
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


### Nomor 2
#### 2a
Peluang terdapat 4 pasien yang sembuh.
```r
p <- 0.2 #peluang sembuh
x <- 4 
n <- 20 #jumlah pasien

dbinom(x,n,p) #2a
```
maka diperoleh

![image](https://user-images.githubusercontent.com/82019030/162619633-771333c7-dfff-45a2-9f35-4c3dfa3fd7c6.png)

#### 2b
Gambarkan grafik histogram berdasarkan kasus tersebut
```r
#membuat histogram dengan fungsi
hist(dbinom(0:10,n,p)) #2b
```
Maka diperoleh histogram sebagai berikut

![image](https://user-images.githubusercontent.com/82019030/162619676-26051d52-316f-4233-a0aa-781d17575d3c.png)

#### 2c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial
```r
rataan <- function(p) {
  return (1/p)
}

varian <- function(p) {
  return ((1-p)/p*p)
}

paste("2c: rata-rata = ", rataan(p), ", varian = ", varian(p)) #2c
```

![image](https://user-images.githubusercontent.com/82019030/162619713-5018f4df-2b58-4443-b343-a3fcb4055ebd.png)

### Nomor 3
#### 3a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
#3a
x <- 6 #6 bayi akan lahir
avge <- 4.5 #rata rata
#built in function poisson distribution
dpois(x,avge)
```
maka peluangnya

![image](https://user-images.githubusercontent.com/82019030/162619768-d7fd89ae-a5f9-498e-aabf-be57a8adf1d7.png)

#### 3b
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
```r
set.seed(1)
hist(rpois(365, avge)) #3b
```
Histogram : 

![image](https://user-images.githubusercontent.com/82019030/162619822-e68f9322-2dd9-4ddc-a6fc-2703dccc767b.png)

#### 3c
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
Kesimpulan : data random yang didapatkan pada poin b cukup mendekati poin a

#### 3d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```r
rata <- 6
paste("3d: rata-rata = ", rata, ", varian = ", rata) #3d
```
varian = lambda | rata rata = lambda 
maka nilai nya sama sama 6
