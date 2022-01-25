import 'biografi.dart';

class Profil {
  String id;
  String nama;
  bool favorit;
  List<Biografi> biografi;

  Profil(
      {required this.id,
      required this.nama,
      required this.biografi,
      this.favorit = false});
}

List profilList = [
  Profil(
    id: "fourman-lubis-1",
    nama: "Riwayat Hidup ",
    biografi: [
      Biografi(
          nama: "FOURMAN LUBIS",
          alamat:
              " Tempat/Tanggal Lahir:Lumbanrau barat,05-08-1999. Alamat Tempat Tinggal: JLN.Parang 1 Gang Karonta No.25 Medan.Jenis Kelamin : Laki-Laki. Agama : Kristen Protestan."),
    ],
  ),
  Profil(id: "fourman-lubis-2", nama: "pendidikan", biografi: [
    Biografi(
        nama: "SD INPRES 173519 LUMBANRAU ", alamat: " jln.lumbanrau barat"),
    Biografi(nama: "SMP NEGRI 2 HABINSARAN", alamat: "jln.lumbanrau barat"),
    Biografi(
        nama: "UNIVERSITAS IBBI ",
        alamat:
            "Jl. Sei Deli No.18, Silalas, Kec. Medan Bar., Kota Medan, Sumatera Utara 20114"),
    Biografi(
        nama: "SMA BUDI MURNI 2 MEDAN", alamat: "Jln.Kapiten Purba 1 MEDAN"),
  ]),
  Profil(id: "fourman-lubis-3", nama: "Pengalaman Kerja ", biografi: [
    Biografi(nama: "pengalaman kerja", alamat: "belum pernah bekerja"),
  ]),
  Profil(id: "fourman-lubis-4", nama: "Keahlian", biografi: [
    Biografi(
        nama: "Minat Dan Keahlian",
        alamat:
            "1.Mampu berbicara dengan baik. 2.Menguasai microsof excell,word. 3.Suka menulis"),
  ]),
  Profil(id: "fourman-lubis-5", nama: "Status ", biografi: [
    Biografi(nama: "Status ", alamat: "Belum menikah"),
  ]),
  Profil(id: "fourman-lubis-6", nama: "hobby", biografi: [
    Biografi(
        nama: "1.Suka bermain bola. 2.mancing .3.berenang",
        alamat: "mudah bergaul dengan orang lain"),
  ]),
];
