import 'package:intl/intl.dart';

class ProdukKategoriModel {
  List kategori = [
    "Kesehatan",
    "Rumah Tangga",
    "Kosmetik",
    "Agrokompleks",
    "Teknologi",
    "Parfum",
    "Penyakit & Obatnya"
  ];

  List get() {
    List data = [];
    data.add({
      "id": "",
      "nama": "Semua Kategori",
    });

    for (var i = 0; i < kategori.length; i++) {
      var item = kategori[i];
      data.add({
        "id": (i + 1).toString(),
        "nama": item,
      });
    }

    return data;
  }
}

class ProdukModel {
  List produk = [
    [
      "Holy Perfecting Pressed Powder",
      [
        ["Jawa", 135000, 175000],
        ["I", 140000, 180000],
        ["II", 145000, 185000],
        ["III", 150000, 190000],
        ["IV", 160000, 200000],
      ],
      16,
      16000,
      "8 gram",
      "Looke Holy Perfecting Pressed Powder merupakan produk bedak padat NASA yang ringan yang bermanfaat untuk menutup noda pada kulit wajah dan meratakan warna kulit Anda. Formula bebas minyak dalam produk bedak padat ini dapat mengontrol kelebihan minyak pada wajah. Looke Holy Pressed Powder diperkaya dengan Squalane Oil untuk menjaga kelembaban kulit sepanjang hari. Kemasannya yang ringkas memudahkan untuk merias wajah Anda di mana saja",
      [
        [
          "Medium to Full Coverage",
          " Mampu menutup noda hitam dan menyamarkan tekstur kulit untuk hasil akhir wajah yang lebih mulus"
        ],
        ["UV Protection", " Melindungi kulit dari paparan sinar UV berbahaya"],
        ["Squalene Oil", " Menjaga kelembaban alami kulit seharian"],
      ],
      [
        ["Aurora", "Warna alami dengan nada netral ke hangat"],
        ["Febe", "Warna terang dengan nada netral"],
        ["Maia", "Warna sedang dengan nada hangat"],
      ],
      [
        "Oleskan Holy Perfecting Pressed Powder setelah menggunakan pelembab. Kenakan secara merata di seluruh wajah dan leher Anda dengan spons bawaan untuk mendapatkan cakupan penuh. Untuk liputan yang lebih ringan, gunakan kuas wajah untuk mengaplikasikan pada wajah Anda."
      ],
      3,
    ],
    [
      "Teh Gurah",
      [
        ["Jawa", 50000, 65000],
        ["I", 55000, 70000],
        ["II", 60000, 75000],
        ["III", 65000, 80000],
        ["IV", 70000, 90000],
      ],
      10,
      10000,
      "8 gram",
      "Teh Gurah NASA mampu menyerap dan melarutkan endapan-endapan sisa makanan yang dikonsumsi antara lain : Endapan lemak tidak larut (asam Keton), Protein tidak larutdari senyawa Netrogen (urea), Mineral tidak larut dari sulfa fosfat dan kreatin, Mengangkat asam tidak larut seperti asam urat, asam hupurat dan asam histamin, Endapan tersebut jika tidak larut akan meracuni tubuh yang lemah kemudian menjadi penyakit. Teh Gurah NASA akan membersihkan dan membuangnya lewat keringat, buang air kecil dan besar.",
      [
        [
          "",
          "Teh Gurah Nasa selain sebagai pelepas dahaga juga berkhasiat untuk mencegah berbagai penyakit antara lain kanker, jantung, encok serta mencegah aksidasi dan menyegarkan kondisi wanita yang sedang nifas juga sebagai pelangsing tubuh bagi yang menderita obesitas (kegemukan)"
        ]
      ],
      [],
      [
        "Bilaslah dahulu cangkir/ teko dengan air mendidih, masukkan Teh Gurah Celup, tuangkan air mendidih dan tunggu beberapa saat untuk mendapatkan kepekatan serta keharuman yang mantap, tambahkan perasan jeruk nipis secukupnya dan gula sesuai selera. Bagi penderita sinusitis, Teh Gurah Celup dapat digunakan langsung seperti gurah dengan cara: buka pembungkus plastik teh gurah nasa celup, lalu tempelkan ke hidung, hisap dalam-dalam hingga 5-6 kali, tunggu beberapa saat nanti akan keluar cairan lendir dari hidung sebagai proses gurah terjadi."
      ],
      1,
    ],
    [
      "Lacoco Darkspot Essence",
      [
        ['Jawa', 140000, 190000],
        ['I', 143000, 193000],
        ['II', 148000, 198000],
        ['III', 153000, 203000],
        ['IV', 163000, 213000],
      ],
      22,
      22000,
      "10 gram",
      "Lacoco Darkspot Essence mengandung Tranexamex acid yang memiliki kemampuan maximal dalam memudarkan flek hitam yang sama cepat nya dengan teknologi laser di klinik perawatan kulit dokter spesialis.Lacoco Lacoco Essence Anti Flek ini memilikim kandungan berbagai bahan alami yang benar benar aman bagi berbagai jenis kulit wajah. Dan bebas dari bahan kimia. Jadi pasti aman di gunakan tiap hari untuk mendapatkan wajah yang bersih, mulus, cerah dan cantik merona. Lacoco Essensce Anti Flek / Lacoco Darkspot Essence sudah terbukti aman dan sudah ber sertifikat BPOM",
      [
        ['', 'Menghilangkan flex hitam membandel secara efektif'],
        ['', 'Menghilangkan bekas jerawat'],
        ['', 'Mencerahkan dan Menghilangkan noda hitam di ketiak'],
        [
          '',
          'Mencerahkan dan Menghilangkan noda hitam bekas luka jatuh / operasi'
        ],
        ['', 'Mencerahkan dan Menghilangkan noda hitam bekas cacar'],
        ['', 'Menghilangkan noda / flek hitam karena gatal'],
        ['', 'Menghilangkan komedo'],
        ['', 'Masih banyak manfaat lain bagi kulit tubuh'],
      ],
      [
        ["Aurora", "Warna alami dengan nada netral ke hangat"],
        ["Febe", "Warna terang dengan nada netral"],
        ["Maia", "Warna sedang dengan nada hangat"],
      ],
      [
        'Teteskan Lacoco Essensce Anti Flek sebanyak 1 - 2 tetes di telunjuk jari tangan. Usapkan merata pada noda hitam yang ingin di hilangkan',
        'Teteskan Lacoco Essensce Anti Flek Sebanyak 4 - 5 tetes ke telapak tangan. Usapkan merata sampai agak hangat. Lalu usapkan pada bekas jerawat atau bekas noda hitam yang ingin di hilangkan'
      ],
      3,
    ],
    [
      "Paket Moreskin Glass Skin",
      [
        ['Jawa', 180000, 250000],
        ['I', 185000, 255000],
        ['II', 190000, 260000],
        ['III', 195000, 265000],
        ['IV', 205000, 275000],
      ],
      25,
      25000,
      "Paket",
      "Paket Moreskin Glass Skin – Produk perawatan wajah dalam bentuk Paket Moreskin Glass Skin memang sangat bagus dan memiliki banyak keunggulan. Paket kecantikan ini di formulasi supaya bisa cepat menembus lapisan kulit sehingga efek dan manfaat dari Paket Moreskin Glass Skin tersebut bisa lebih cepat dirasakan.Looke Holy Perfecting Pressed Powder merupakan produk bedak padat NASA yang ringan yang bermanfaat untuk menutup noda pada kulit wajah dan meratakan warna kulit Anda. Formula bebas minyak dalam produk bedak padat ini dapat mengontrol kelebihan minyak pada wajah. Looke Holy Pressed Powder diperkaya dengan Squalane Oil untuk menjaga kelembaban kulit sepanjang hari. Kemasannya yang ringkas memudahkan untuk merias wajah Anda di mana saja. Nah kali ini ada sebuah serum juga yang cukup menarik banyak perhatian yaitu Paket Moreskin GLASS SKIN Yoghurt Series NASA. Paket kecantikan ini disebutkan kalau bisa memberikan efek maksimal membuat wajah yang semakin glowing layaknya artis korea dalam waktu yang cukup singkat yaitu 14 hari saja.",
      [
        ['', 'Meremajakan kulit'],
        ['', 'Membuat kulit glowing dan segar'],
        ['', 'Menghilangkan jerawat dan bekas'],
        ['', 'Mengecilkan pori pori'],
        ['', 'Merangsang produksi kolagen'],
        ['', 'Mengencangkan kulit wajah'],
        ['', 'Wajah lebih cerah dan bening'],
      ],
      [
        ['Face Mist', ''],
        ['Facial Foam', ''],
        ['Day Cream', ''],
        ['Night Cream', ''],
      ],
      [],
      3,
    ],
  ];

  List get() {
    List data = [];

    for (var i = 0; i < produk.length; i++) {
      var item = produk[i];
      List harga = [], manfaat = [], varian = [];

      for (var obj in item[1]) {
        harga.add({
          "wilayah": obj[0],
          "distributor": NumberFormat.currency(locale: 'id_ID')
              .format(obj[1])
              .replaceAll(',00', '')
              .replaceAll('IDR', 'Rp.'),
          "konsumen": NumberFormat.currency(locale: 'id_ID')
              .format(obj[2])
              .replaceAll(',00', '')
              .replaceAll('IDR', 'Rp.'),
        });
      }

      for (var obj in item[6]) {
        manfaat.add({
          "item": obj[0],
          "detail": obj[1],
        });
      }

      for (var obj in item[7]) {
        varian.add({
          "item": obj[0],
          "detail": obj[1],
        });
      }

      data.add({
        "id": (i + 1).toString(),
        "nama": item[0],
        "harga": harga,
        "pv": item[2],
        "bv": NumberFormat.currency(locale: 'id_ID')
            .format(item[3])
            .replaceAll('IDR', '')
            .replaceAll(',00', ''),
        "berat": item[4],
        "deskripsi": item[5],
        "manfaat": manfaat,
        "varian": varian,
        "cara_pakai": item[8],
        "gambar": item[0] + ".jpg",
        "kategori_id": item[9].toString(),
      });
    }

    return data;
  }
}
