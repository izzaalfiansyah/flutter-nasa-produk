import 'package:flutter/material.dart';

class ProdukId extends StatefulWidget {
  const ProdukId({Key? key}) : super(key: key);

  @override
  _ProdukIdState createState() => _ProdukIdState();
}

class _ProdukIdState extends State<ProdukId> {
  @override
  void initState() {
    super.initState();
  }

  Widget section({
    required String title,
    required Widget child,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 15)),
        child,
        const Padding(padding: EdgeInsets.only(bottom: 40)),
      ],
    );
  }

  Widget hargaSection(List harga) {
    return Column(
      children: harga.map((item) {
        return Table(
          children: [
            TableRow(
              children: [
                const TableCell(
                  child: Text(
                    'Wilayah',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TableCell(
                  child: Text(
                    item['wilayah'],
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const TableCell(
                  child: Text(
                    'Harga Distributor',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TableCell(
                  child: Text(
                    item['distributor'].toString(),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                const TableCell(
                  child: Text(
                    'Harga Konsumen',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TableCell(
                  child: Text(
                    item['konsumen'].toString(),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            const TableRow(children: [
              TableCell(
                child: Divider(
                  height: 30,
                ),
              ),
              TableCell(
                child: Divider(
                  height: 30,
                ),
              ),
            ])
          ],
        );
      }).toList(),
    );
  }

  Widget manfaatSection(List manfaat) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: manfaat.map((item) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (item['item'].isEmpty
                ? Text(item['detail'])
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['item'] + ' : '),
                      Text('- ' + item['detail']),
                    ],
                  )),
            const Padding(padding: EdgeInsets.only(top: 20.0))
          ],
        );
      }).toList(),
    );
  }

  Widget varianSection(List varian) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: varian.map((item) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (item['detail'].isEmpty
                ? Text(item['item'])
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['item'] + ' : ' + item['detail']),
                    ],
                  )),
            const Padding(padding: EdgeInsets.only(top: 10.0))
          ],
        );
      }).toList(),
    );
  }

  Widget caraPakaiSection(List caraPakai) {
    int length = caraPakai.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: caraPakai.map((item) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (length > 1
                ? Text(
                    'Cara ' + (caraPakai.indexOf(item) + 1).toString() + ' : ')
                : Container()),
            Text(
              item,
              textAlign: TextAlign.justify,
            ),
            const Padding(padding: EdgeInsets.only(top: 10.0))
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(item['nama']),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/produk/' + item["gambar"],
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      section(
                        title: 'Deskripsi',
                        child: Text(
                          item['deskripsi'],
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      section(
                        title: 'Detail',
                        child: Table(
                          columnWidths: const {
                            0: FixedColumnWidth(100),
                            1: FixedColumnWidth(20),
                          },
                          children: [
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Text('Nama'),
                                ),
                                const TableCell(
                                  child: Text(':'),
                                ),
                                TableCell(
                                  child: Text(item['nama']),
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Text('PV'),
                                ),
                                const TableCell(
                                  child: Text(':'),
                                ),
                                TableCell(
                                  child: Text(item['pv'].toString()),
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Text('BV'),
                                ),
                                const TableCell(
                                  child: Text(':'),
                                ),
                                TableCell(
                                  child: Text(item['bv'].toString()),
                                )
                              ],
                            ),
                            TableRow(
                              children: [
                                const TableCell(
                                  child: Text('Isi/Berat'),
                                ),
                                const TableCell(
                                  child: Text(':'),
                                ),
                                TableCell(
                                  child: Text(item['berat']),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      section(
                        title: 'Harga',
                        child: hargaSection(item['harga']),
                      ),
                      section(
                        title: 'Manfaat',
                        child: manfaatSection(item['manfaat']),
                      ),
                      (item['varian'].length > 0
                          ? section(
                              title: 'Varian',
                              child: varianSection(item['varian']),
                            )
                          : Container()),
                      (item['cara_pakai'].length > 0
                          ? section(
                              title: 'Cara Pakai',
                              child: caraPakaiSection(item['cara_pakai']),
                            )
                          : Container())
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
