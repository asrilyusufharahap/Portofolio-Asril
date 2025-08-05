# Data frekuensi
interval <- c(0, 10, 20, 30, 40)
frekuensi <- c(5, 10, 8, 7)
# Hitung frekuensi kumulatif
kumulatif <- cumsum(frekuensi)

# Hitung total frekuensi
n <- sum(frekuensi)

# Hitung kuartil
Q1_pos <- 0.25 * n
Q2_pos <- 0.50 * n
Q3_pos <- 0.75 * n

# Fungsi untuk mencari kuartil
kuartil_kelompok <- function(posisi, kumulatif, interval) {
  for (i in 1:length(kumulatif)) {
    if (kumulatif[i] >= posisi) {
      L <- interval[i] - 10 # batas bawah
      F <- kumulatif[i - 1] # frekuensi kumulatif sebelum interval
      h <- 10 # panjang interval
      return(L + ((posisi - F) / frekuensi[i]) * h)
    }
  }
}

# Menghitung kuartil
Q1 <- kuartil_kelompok(Q1_pos, kumulatif, interval)
Q2 <- kuartil_kelompok(Q2_pos, kumulatif, interval)
Q3 <- kuartil_kelompok(Q3_pos, kumulatif, interval)

Q1
Q2
Q3
