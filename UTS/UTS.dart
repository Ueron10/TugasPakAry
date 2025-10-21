// Bagian 1

// Nomor 1
String namaKarakter = "Ksatria";
int healthPoints = 100;
int level = 1;
int mp = 50;

// Nomor 2
void tampilkanStatus() {
  print("===== STATUS KARAKTER =====");
  print("Nama  : $namaKarakter");
  print("Level : $level");
  print("HP    : $healthPoints");
  print("MP    : $mp \n");
  print("--- Inventaris ---");
  if (inventaris.isEmpty) {
    print("(Kosong)\n");
  } else {
    for (var item in inventaris) {
      print("- $item");
    }
  }
  print("--- Daftar Skill ---");
  if (daftarSkill.isEmpty) {
    print("(Belum ada skill) \n");
  } else {
    for (var skill in daftarSkill) {
      print("- Skill: ${skill.nama} (Damage: ${skill.damage})");
    }
  }
  print("===========================");
  print("");
}

// Nomor 3
void terimaKerusakan(int damage) {
  healthPoints -= damage;
  if (healthPoints < 0) healthPoints = 0;
  print("$namaKarakter menerima $damage kerusakan!");
}

// Nomor 4
bool apakahHidup() {
  return healthPoints > 0;
}

// Nomor 5 Simulasi awal ditulis di dalam main()

// Bagian 2

// Nomor 6
List<String> inventaris = [];

// Nomor 7
void tambahItem(String item) {
  inventaris.add(item);
  print("Item '$item' ditambahkan ke inventaris.");
}

// Nomor 8
void tampilkanInventaris() {
  print("--- Inventaris ---");
  if (inventaris.isEmpty) {
    print("(Kosong)");
  } else {
    for (var item in inventaris) {
      print("- $item");
    }
  }
  print("===================");
}

// Nomor 9 Integrasi inventaris ke status karakter sudah di dalam tampilkanStatus()
// Nomor 10 Penambahan item akan dilakukan di main()

// Bagian 3

// Nomor 11
class Skill {
  String nama;
  int damage;

  // Nomor 12
  Skill(this.nama, this.damage);

  void info() {
    print("- Skill: $nama (Damage: $damage)");
  }
}

// Nomor 13
List<Skill> daftarSkill = [];

// Nomor 14
void tambahSkill(Skill skill) {
  daftarSkill.add(skill);
  print("Karakter mempelajari skill baru!");
}

// Nomor 15 Akan digunakan di main untuk membuat skill baru

// Bagian 4

// Nomor 16 Fungsi menampilkan semua skill
void tampilkanSemuaSkill() {
  print("--- Daftar Skill ---");
  if (daftarSkill.isEmpty) {
    print("(Belum ada skill)");
  } else {
    for (var skill in daftarSkill) {
      skill.info();
    }
  }
  print("====================");
}

// Nomor 17 Integrasi daftar skill ke tampilkanStatus() sudah dilakukan

// Nomor 18
void gunakanSkill(Skill skill) {
  print("");
  print("--- Pertarungan Final ---");
  print("$namaKarakter menggunakan skill '${skill.nama}'!");
  mp -= 15;
  if (mp < 0) mp = 0;
}

// Nomor 19 Menggunakan skill di dalam main()
// Nomor 20 Menampilkan status akhir karakter di main()

void main(List<String> args) {
  print("--- Petualangan Dimulai ---\n");

  // Nomor 5
  tampilkanStatus();

  // Nomor 10
  terimaKerusakan(25);

  // Nomor 8
  tambahItem("Peta");
  tambahItem("Obat");

  // Nomor 15
  Skill skill1 = Skill("Tebasan Api", 20);

  // Nomor 14
  tambahSkill(skill1);

  // Nomor 19
  gunakanSkill(skill1);
  print("");

  // Nomor 20
  tampilkanStatus();
}
