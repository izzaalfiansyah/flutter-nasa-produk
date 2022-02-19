import 'package:flutter/material.dart';
import 'package:test/data.dart';

class Produk extends StatefulWidget {
  const Produk({Key? key}) : super(key: key);

  @override
  _ProdukState createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  List kategori = [], produk = [];
  String kategoriId = "", search = "";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    getKategori();
    getProduk();
  }

  void getProduk() {
    isLoading = true;
    produk = ProdukModel().get();

    if (kategoriId.isNotEmpty) {
      List data = [];

      for (var item in produk) {
        if (item["kategori_id"] == kategoriId) {
          data.add(item);
        }
      }

      produk = data;
    }

    if (search.isNotEmpty) {
      isLoading = false;
      List data = [];
      search = search.toLowerCase();

      for (var item in produk) {
        String nama = item["nama"].toLowerCase();
        if (nama.contains(search)) {
          data.add(item);
        }
      }

      produk = data;
    }

    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void getKategori() {
    kategori = ProdukKategoriModel().get();
  }

  Widget selectKategori() {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        labelText: "Kategori",
      ),
      value: kategoriId,
      items: kategori.map((item) {
        return DropdownMenuItem(
          value: item['id'].toString(),
          child: Text(item['nama']),
        );
      }).toList(),
      onChanged: (String? val) {
        setState(() {
          kategoriId = val!;
          getProduk();
        });
      },
    );
  }

  Widget searchField() {
    return TextField(
      onSubmitted: (String val) {
        setState(() {
          search = val;
          getProduk();
        });
      },
      decoration: const InputDecoration(
        hintText: 'Cari Produk',
        labelText: "Pencarian",
        suffixIcon: Icon(Icons.search),
      ),
      autofocus: false,
      onChanged: (String val) {
        setState(() {
          search = val;
          getProduk();
        });
      },
    );
  }

  Widget produkView(BuildContext context, item) {
    var mediaSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/produk/id', arguments: item);
      },
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Image.asset(
              'assets/produk/' + item['gambar'],
              width: mediaSize.width / 2 - 20,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 10.0,
              ),
              child: SizedBox(
                width: mediaSize.width / 2 - 50,
                child: Text(
                  item['nama'],
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    selectKategori(),
                    const Padding(padding: EdgeInsets.all(5.0)),
                    searchField(),
                  ],
                ),
              ),
            ),
            isLoading
                ? const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text('Memuat...'),
                    ),
                  )
                : Wrap(
                    children: produk.map((item) {
                      return produkView(context, item);
                    }).toList(),
                  )
          ],
        ),
      ),
    );
  }
}
