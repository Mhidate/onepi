class Fakultas {
  String name;
  int jumlahProdi;
  String imageUrl;
  String deskripsi;

  Fakultas({
    required this.name,
    required this.jumlahProdi,
    required this.imageUrl,
    required this.deskripsi,
  });
}

List<Fakultas> dummyData = [
  Fakultas(
      name: 'Fakultas Teknik',
      jumlahProdi: 4,
      imageUrl: 'images/teknik.png',
      deskripsi: 'sebelum di perbaiki halaman ini juga overflow'),
  Fakultas(
      name: 'Fakultas Bahasa ',
      jumlahProdi: 5,
      imageUrl: 'images/bahasa.png',
      deskripsi: 'percoban,coba coba coba coba coba coba coba coba coba coba coba coba coba coba coba coba coba'),
];
