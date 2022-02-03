import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';

class MateriAij extends StatelessWidget {
  const MateriAij({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
          child: Container(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  Text(
                    'Bab 1 : Pengertian Control Panel Hosting',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 54),
                    child: const Icon(Icons.folder_open),
                  ),
                ],
              )),
          onTap: () => Navigator.pushNamed(context, Routes.bab1aij),
        ),
        const Divider(
          height: 30,
          indent: 15,
          endIndent: 15,
          thickness: 1,
        ),
        Container(
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Text(
                  'Bab 2 : Mengkonfigurasi Control Panel Hosting',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.folder_open)),
              ],
            )),
        const Divider(
          height: 30,
          indent: 15,
          endIndent: 15,
          thickness: 1,
        ),
        Container(
          padding: const EdgeInsets.only(left: 7),
          child: Row(
            children: [
              Text(
                'Bab 3 : Quiz',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 245),
                  child: const Icon(Icons.folder_open)),
            ],
          ),
        ),
        const Divider(
          height: 30,
          indent: 15,
          endIndent: 15,
          thickness: 1,
        ),
        Container(
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Text(
                  'Bab 4 : Mengkonfigurasi VPN Server',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 85),
                    child: const Icon(Icons.folder_open)),
              ],
            )),
        const Divider(
          height: 30,
          indent: 15,
          endIndent: 15,
          thickness: 1,
        ),
        Container(
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              children: [
                Text(
                  'Bab 5 : Ujian Semester',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 175),
                    child: const Icon(Icons.folder_open)),
              ],
            )),
      ]),
    ));
  }
}
