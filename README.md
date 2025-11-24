# Muzakki Naufal Hamastiar / 221080200156

Widget Struktur Dasar
- MaterialApp: Widget inti yang menyediakan fungsionalitas desain Material dan merupakan akar dari aplikasi Anda.
- Scaffold: Menyediakan kerangka visual dasar aplikasi, mencakup AppBar, body, dan potensi FloatingActionButton atau Drawer.
- AppBar: Menampilkan judul halaman ("MyShop Mini" atau nama kategori) dan secara otomatis menangani tombol back untuk navigasi.

Widget Tata Letak (Layout)
- Column: Menyusun widget anak secara vertikal. Digunakan di semua layar untuk menata konten dari atas ke bawah.
- Row: Menyusun widget anak secara horizontal. Digunakan dalam HomeScreen (dalam Wrap) untuk menata kartu kategori.
- Padding: Memberikan ruang kosong (margin) di sekitar widget untuk estetika.
- Center: Menempatkan widget anak di tengah layar, digunakan dalam ProductDetailScreen.
- Expanded: Memaksa widget anak untuk mengisi sisa ruang yang tersedia di sepanjang sumbu utama (Column atau Row). Digunakan untuk memastikan GridView.builder mengisi sisa ruang di ProductListScreen.
- GridView.builder: Widget yang sangat efisien untuk menampilkan daftar item dalam format Grid (dua kolom), seperti yang diminta untuk daftar produk.

Widget Interaktif & Tampilan
- Text: Menampilkan teks, seperti judul, nama produk, dan harga.
- Icon: Menampilkan ikon, digunakan sebagai pengganti gambar produk/kategori yang sederhana.
- Card: Memberikan tampilan yang elegan dan ditinggikan (elevation) pada kategori dan produk.
- InkWell: Widget yang membungkus widget lain (seperti Card) untuk membuatnya dapat diklik (onTap) sambil memberikan efek visual splash yang baik saat disentuh.
- Hero: Widget kunci yang digunakan untuk menciptakan transisi visual yang mulus dan indah (animasi) pada ikon produk saat berpindah dari ProductListScreen ke ProductDetailScreen.
