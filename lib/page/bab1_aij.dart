import 'package:flutter/material.dart';
import 'package:siswa/page/tugasbab1binggris.dart';
import 'package:siswa/route/route.dart';

class Bab1AijPage extends StatelessWidget {
  const Bab1AijPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Bab',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.indigo[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const TugasBab1Binggris(),
                    ),
                  ),
                  child: SizedBox(
                      width: 110,
                      child: Center(
                        child: Row(
                          children: [
                            const Icon(Icons.delete),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Hapus Bab',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'NAMA BAB',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Bab 1 : Pengertian Control Panel Hosting',
                    suffixIcon: Icon(
                      Icons.create_outlined,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'MODUL',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('A. Apa itu Control Panel Hosting'),
                      Icon(Icons.folder_open),
                    ],
                  ),
                  onTap: () => Navigator.pushNamed(context, Routes.modul1aij),
                ),
                const Divider(
                  height: 30,
                  indent: 15,
                  endIndent: 15,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('B. Langkah-langkah mengevaluasi Control Panel'),
                    Icon(Icons.folder_open),
                  ],
                ),
                const Divider(
                  height: 30,
                  indent: 15,
                  endIndent: 15,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300, top: 370),
                  child: IconButton(
                    color: Colors.indigo[400],
                    iconSize: 50,
                    icon: const Icon(
                      Icons.add_circle,
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, Routes.tambahmodulbaru),
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
