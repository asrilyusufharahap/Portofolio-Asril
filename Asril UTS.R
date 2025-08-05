# SOAL
#Nilai (31-40),(41-50),(51-60),(61-70),(71-80),(81-90)
#Frekuensi (3),(8),(10),(15),(9),(5)
# Tentulkan masing-masing nilai pada program R/R Studio
# Nilai Modus
# Mean
# Q3
# D5
# simpangan rata-rata?

# Membuat tabel soal dalam bentuk data frame
soal <- data.frame(
  "Interval Nilai" = c("31 - 40", "41 - 50", "51 - 60", "61 - 70", "71 - 80", "81 - 90"),
  "Frekuensi" = c(3, 8, 10, 15, 9, 5)
)
# Menampilkan tabel soal
cat("Tabel Soal:\n")
print(soal)

# Menghitung nilai tengah tiap kelas
nilai_tengah <- c(35, 45, 55, 65, 75, 85)

# Frekuensi dari tabel soal
frekuensi <- soal$Frekuensi

# 2. Menghitung Mean (Rata-rata)
# Mean dihitung sebagai rata-rata tertimbang
mean <- sum(nilai_tengah * frekuensi) / sum(frekuensi)
cat("2. Mean (Rata-rata):", mean, "\n")

# 3. Menghitung Kuartil Ketiga (Q3)
# Membuat data asli berdasarkan nilai tengah dan frekuensi
data <- rep(nilai_tengah, frekuensi)  # Mengubah data ke dalam bentuk distribusi asli
Q3 <- quantile(data, 0.75)
cat("3. Kuartil Ketiga (Q3):", Q3, "\n")

# 4. Menghitung Desil Kelima (D5)
# D5 adalah persentil ke-50, setara dengan median
D5 <- quantile(data, 0.5)
cat("4. Desil Kelima (D5):", D5, "\n")

# 5. Menghitung Simpangan Rata-rata
# Menghitung rata-rata simpangan (Mean Deviation) dari rata-rata
simpangan_rata2 <- sum(abs(data - mean)) / length(data)
cat("5. Simpangan Rata-rata:", simpangan_rata2, "\n")