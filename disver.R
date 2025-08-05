# Fungsi untuk menghitung range data tunggal
hitung_range_tunggal <- function(data) {
  # Hitung nilai maksimum dan minimum
  nilai_max <- max(data)
  nilai_min <- min(data)
  
  # Hitung range
  range <- nilai_max - nilai_min
  
  # Tampilkan langkah perhitungan
  cat("Perhitungan Range Data Tunggal:\n")
  cat("1. Nilai Maximum:", nilai_max, "\n")
  cat("2. Nilai Minimum:", nilai_min, "\n")
  cat("3. Range = Max - Min =", range, "\n")
  
  return(range)
}

# Fungsi untuk menghitung range data kelompok
hitung_range_kelompok <- function(batas_bawah, batas_atas) {
  # Pastikan panjang batas bawah dan atas sama
  if(length(batas_bawah) != length(batas_atas)) {
    stop("Panjang batas bawah dan atas harus sama!")
  }
  
  # Hitung nilai maksimum dan minimum
  nilai_max <- max(batas_atas)+0.5
  nilai_min <- min(batas_bawah)-0.5
  
  # Hitung range
  range <- nilai_max - nilai_min
  
  # Tampilkan langkah perhitungan
  cat("Perhitungan Range Data Kelompok:\n")
  cat("1. Nilai Maximum (batas atas tertinggi):", nilai_max, "\n")
  cat("2. Nilai Minimum (batas bawah terendah):", nilai_min, "\n")
  cat("3. Range = Max - Min =", range, "\n")
  
  return(range)
}

# Contoh penggunaan data tunggal
data_tunggal <- c(7, 4, 11, 1, 9, 8)
cat("\nContoh Data Tunggal:\n")
hasil_tunggal <- hitung_range_tunggal(data_tunggal)

# Contoh penggunaan data kelompok
batas_bawah <- c(140, 145, 150, 155, 160, 165, 170)
batas_atas <- c(144, 149, 154, 159, 164, 169, 174)
cat("\nContoh Data Kelompok:\n")
hasil_kelompok <- hitung_range_kelompok(batas_bawah, batas_atas)
