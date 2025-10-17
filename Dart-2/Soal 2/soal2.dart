void main() {
  // Identitas
  String nama = "Michael Juferson Balla Tangkilisan";
  String nim = "20235520004";

  print("=== Bilangan Prima dari 0 sampai 201 ===");

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i adalah bilangan prima - $nama ($nim)");
    }
  }
}

// Fungsi untuk mengecek apakah suatu angka adalah bilangan prima
bool isPrima(int n) {
  if (n < 2) return false; // 0 dan 1 bukan bilangan prima
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false; // jika habis dibagi, bukan prima
  }
  return true;
}
