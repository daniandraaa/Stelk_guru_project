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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama BAB'),
              // TextField(
              //   decoration: InputDecoration(hintText: ('Masukkan nama Bab')),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bab 6 : Virtual Private Network (VPN'),
                  Icon(Icons.create_outlined)
                ],
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.aijmapelpage),
                  child: SizedBox(
                      width: 500,
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
    );
  }
}
