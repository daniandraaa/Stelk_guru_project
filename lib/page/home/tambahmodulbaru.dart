import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siswa/route/route.dart';

class TambahMobulBaru extends StatefulWidget {
  const TambahMobulBaru({Key? key}) : super(key: key);

  @override
  State<TambahMobulBaru> createState() => _TambahMobulBaruState();
}

class _TambahMobulBaruState extends State<TambahMobulBaru> {
  String? selected;
  String? terpilih;

  List<String> data = [
    "Video",
    "PPTX/PDF/JPG",
    "Tidak ada",
  ];

  List<String> datamodul = [
    "Tidak Ada Tugas",
    "Google Form",
    "Upload File (Dokumen/Foto)",
    "Insert Link (Video/Audio)",
  ];

  Widget fromdropdowntugasmodul() {
    if (terpilih == 'Google Form') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Link Google From'),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Link Google Form",
                hintStyle: TextStyle(color: Colors.red)),
          ),
        ],
      );
    }
    return Container();
  }

  Widget fromDropdown() {
    if (selected == 'Video') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Link Video'),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.red,
                hintText: ('Masukkan Link Video'),
                hintStyle: TextStyle(color: Colors.red)),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('Catatan'),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Tambahkan Catatan",
                hintStyle: TextStyle(color: Colors.red)),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('Tugas Modul'),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            decoration: const InputDecoration(border: OutlineInputBorder()),
            value: terpilih,
            isExpanded: true,
            hint: const Text("Pilih Jenis Tugas Untuk Modul Ini"),
            onChanged: (value) {
              setState(
                () {
                  terpilih = value as String?;
                },
              );
            },
            items: datamodul
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 15),
          fromdropdowntugasmodul(),
        ],
      );
    }
    if (selected == 'PPTX/PDF/JPG') {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Konten File'),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.red,
              hintText: ('Upload File'),
              hintStyle: TextStyle(color: Colors.red)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Catatan'),
        const SizedBox(
          height: 10,
        ),
        const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Tambahkan Catatan",
              hintStyle: TextStyle(color: Colors.red)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('Tugas Modul'),
        const SizedBox(
          height: 10,
        ),
        DropdownButtonFormField(
          decoration: const InputDecoration(border: OutlineInputBorder()),
          value: terpilih,
          isExpanded: true,
          hint: const Text("Pilih Jenis Tugas Untuk Modul Ini"),
          onChanged: (value) {
            setState(
              () {
                terpilih = value as String?;
              },
            );
          },
          items: datamodul
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 15),
        fromdropdowntugasmodul(),
      ]);
    }
    if (selected == 'Tidak ada') {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Catatan'),
            TextField(
              decoration: InputDecoration(
                  hintText: "Tambahkan Catatan",
                  hintStyle: TextStyle(color: Colors.red)),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Tugas Modul'),
            TextField(
              decoration: InputDecoration(
                  hintText: "Pilih Jenis Tugas Untuk Modul Ini",
                  hintStyle: TextStyle(color: Colors.red)),
            ),
          ]);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Tambah Modul Baru',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'NAMA MODUL',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.red,
                          hintText: ('Masukkan Nama Modul'),
                          suffixIcon: Icon(Icons.create)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'File Tutorial',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          // SizedBox(
                          //   child: DropdownSearch<String>(
                          //     mode: Mode.MENU,
                          //     showSelectedItems: true,

                          //     items: data,
                          //     hint: 'Pilih Jenis File Tutorial Untuk Modul Ini',
                          //   ),
                          //   height: 40,
                          // ),

                          DropdownButtonFormField(
                            decoration: const InputDecoration(
                                border: OutlineInputBorder()),
                            value: selected,
                            isExpanded: true,
                            hint: const Text(
                                "Pilih Jenis File Tutorial Untuk Modul Ini"),
                            onChanged: (value) {
                              setState(
                                () {
                                  selected = value as String?;
                                },
                              );
                            },
                            items: data
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 10),
                          fromDropdown(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (selected != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => const AlertDialog(
                        content: Text('Berhasil Memperbarui Modul'),
                      ),
                    ).timeout(Duration(seconds: 1),
                        onTimeout: () =>
                            Navigator.pushNamed(context, Routes.aijmapelpage));
                  },
                  child: SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Center(
                          child: Text(
                            'Simpan',
                            style: Theme.of(context)
                                .textTheme
                                .button
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                      )),
                ),
              ),
          ],
        )),
      ),
    );
  }
}
