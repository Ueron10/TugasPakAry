void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) break;               // menghentikan loop saat index = 21
    else if (index > 1 && index < 17) continue; // lewati angka 2–16 (ubah logika agar sesuai konteks)
    
    print(index);
  }
}
