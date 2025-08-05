#data_tunggal
data_tunggal <- c(10,3,12,5,7,10,8,14,14,14)
mean(data_tunggal)

#data_kelompok
intervals <- c("18-24", "26-31","32-28","39-45","46-52","53-59","60-66")
frequency <- c(12,15,21,11,5,3,3)
tabel_frequensi_kelompok <- data.frame(interval = intervals, frekuensi = frequency)
print(tabel_frequensi_kelompok)

#nilai tengah
midpoint <- c(21,28,35,42,49,56,63)
total_frequency <- sum(frequency)
total_midpoint_frequency <- sum(midpoint * frequency)
mean_kelompok <- total_midpoint_frequency / total_frequency
cat("Mean Data Kelompok:", mean_kelompok, "\n")

#modus
data <- c(1,2,2,3,4,4,4,5)
frekuensi <- table(data)
modus <- as.numeric(names(frekuensi)
[which.max(frekuensi)]    
print(modus)
