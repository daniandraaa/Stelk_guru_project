import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';

class TambahBab extends StatelessWidget {
  const TambahBab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Tambah Bab Baru',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Nama BAB',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: ('Bab 6 : Virtual Private Network (VPN)'),
                      suffixIcon: Icon(Icons.create)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 600, 70, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.indigo[400],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45)),
                          content: Text('Berhasil Menambahkan Bab'),
                        ),
                      ).timeout(Duration(seconds: 1),
                          onTimeout: () => Navigator.pushNamed(
                              context, Routes.aijmapelpage));
                    },
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
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
            ),
          ),
        ),
      ),
    );
  }
}
