import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:siswa/route/siswa.dart';

Future<List<DatabaseSiswa>> getDataa() async {
  try {
    final result =
        await FirebaseFirestore.instance.collection('DatabaseSiswa').get();
    return result.docs
        .map(
          (e) => DatabaseSiswa.fromJson(
            e.data(),
          ),
        )
        .toList();
  } catch (e) {
    rethrow;
  }
}

class KelolaAkunPage extends StatelessWidget {
  const KelolaAkunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Kelola Akun',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(130, 30, 0, 0),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('asset/suharyunibulat.png'),
                  radius: 50,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'NIK',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                '544201253',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const Divider(
                height: 30,
                // indent: 15,
                // endIndent: 15,
                thickness: 1,
              ),
              Text(
                'Nama',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                'Suharyuni H, ST.',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const Divider(
                height: 30,
                // indent: 15,
                // endIndent: 15,
                thickness: 1,
              ),
              Text(
                'Nomor HP',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: '085394340999',
                  suffixIcon: Icon(
                    Icons.create_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'E-mail',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'suharyuni@gmail.com',
                  suffixIcon: Icon(
                    Icons.create_outlined,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  onPressed: () {},
                  child: const SizedBox(
                      width: 160,
                      child: Center(
                        child: Text('Simpan'),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
