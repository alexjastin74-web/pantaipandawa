import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //
        backgroundColor: Color(0xfff9f8c6),

        appBar: AppBar(
          title: Text('Pantai Pandawa'),
          backgroundColor: Color(0xffd9dc94),
          foregroundColor: Color(0xff888954),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/pantaipandawa.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Pantai Pandawa',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff888954),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Pantai Pandawa merupakan salah satu destinasi wisata pantai yang terletak di Desa Kutuh, Kecamatan Kuta Selatan, Kabupaten Badung, Provinsi Bali. Pantai ini dikenal dengan keindahan pasir putih, air laut yang jernih, serta tebing-tebing batu kapur yang menjulang tinggi di sepanjang jalan menuju kawasan pantai.'
                    'Pada awalnya, Pantai Pandawa dikenal dengan nama Pantai Kutuh atau Secret Beach karena lokasinya tersembunyi di balik perbukitan kapur sehingga sulit dijangkau oleh masyarakat luar. Sebelum berkembang menjadi kawasan wisata, pantai ini dimanfaatkan oleh masyarakat setempat sebagai tempat kegiatan keagamaan Hindu, khususnya upacara Melasti, serta sebagai kawasan budidaya rumput laut dan aktivitas nelayan.'
                    'Sejarah pengembangan Pantai Pandawa dimulai sekitar tahun 1997 ketika masyarakat Desa Kutuh berinisiatif membuka akses jalan dengan membelah tebing-tebing kapur yang menghalangi jalan menuju pantai. Proses pembukaan akses tersebut berlangsung selama kurang lebih 12 tahun hingga akhirnya jalan menuju pantai dapat dilalui kendaraan dengan lebih mudah. Pembangunan akses ini dilakukan melalui semangat gotong royong masyarakat setempat.'
                    'Nama Pantai Pandawa diambil dari kisah pewayangan Mahabharata, yaitu lima bersaudara Pandawa yang terdiri dari Yudistira, Bima, Arjuna, Nakula, dan Sahadewa. Nama tersebut dipilih sebagai simbol perjuangan dan kegigihan masyarakat Desa Kutuh dalam membuka akses menuju pantai. Di sepanjang tebing menuju kawasan pantai juga terdapat patung kelima tokoh Pandawa yang menjadi salah satu daya tarik dan ikon wisata.'
                    'Pada tanggal 27 Desember 2012, Pantai Pandawa resmi diperkenalkan sebagai kawasan wisata dengan nama Pantai Pandawa. Sejak saat itu, kawasan ini mengalami perkembangan pesat dan mulai dikenal oleh wisatawan domestik maupun mancanegara. Pengelolaan kawasan wisata ini juga melibatkan masyarakat Desa Adat Kutuh sehingga memberikan peluang ekonomi bagi penduduk setempat.'
                    'Pantai Pandawa memiliki bentang alam berupa garis pantai berpasir putih, perairan laut berwarna biru kehijauan, serta tebing batu kapur yang menjadi ciri khas kawasan tersebut. Keindahan alamnya menjadikan pantai ini sebagai salah satu destinasi wisata unggulan di Bali Selatan.'
                    'Tidak hanya menjadi tempat untuk menikmati pemandangan laut, Pantai Pandawa juga menyediakan berbagai aktivitas wisata seperti bermain kano, berenang di area yang diperbolehkan, menikmati pemandangan pantai, serta mengunjungi patung-patung Pandawa. Keindahan alam dan nilai sejarah budaya menjadikan Pantai Pandawa sebagai salah satu tujuan wisata yang menarik untuk dikunjungi.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xff888954),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xfff4f6de),
                    border: Border.all(
                      color: Color(0xff545530),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff888954),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xff888954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Pantai Pandawa\n'
                                    'Desa Kutuh,\n'
                                    'Kecamatan Kuta Selatan,\n'
                                    'Kabupaten Badung,\n'
                                    'Bali',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xff888954),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xff545530),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff888954),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xff888954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '0883159701457',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff888954),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xff545530),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xff888954),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'alexjastin74@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff888954),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
