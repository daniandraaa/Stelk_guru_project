import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';

class LaporanTlj extends StatelessWidget {
  const LaporanTlj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Riha Afrah',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 54),
                      child: const Icon(Icons.folder_open),
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.pushNamed(context, Routes.laporan1aij),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bryan Ilhamsyah Chairal',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Andi Muhammad Fauzan',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Icon(Icons.folder_open),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daniandra Prayudisty Ilham',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Revitha Vebiola Hermanto',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const Icon(Icons.folder_open),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
