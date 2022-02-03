import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';

class MateriTlj extends StatelessWidget {
  const MateriTlj({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
          child: Container(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bab 1 : VolP',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bab 2 : Keragaman Komunikasi Data',
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
                'Bab 3 : Quiz',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 245),
                  child: const Icon(Icons.folder_open)),
            ],
          ),
        ),
      ]),
    ));
  }
}
