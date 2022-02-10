import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';
import 'package:siswa/route/siswa.dart';

class Laporan1Aij extends StatelessWidget {
  const Laporan1Aij({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: const Text(
            'Kelasku',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: FutureBuilder<List<Siswa>>(
                          future: getData(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return Text(snapshot.error.toString());
                            }
                            if (snapshot.hasData) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Halo, ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)

                                          // TextStyle(
                                          //     fontWeight:
                                          //         FontWeight.bold),
                                          ),
                                      Text('Suharyuni H, ST.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15)),
                                      // Text(
                                      //   'Tingkat 11',
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .bodyText2,
                                      // ),
                                      // Text(
                                      //   'TKJ2',
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .bodyText2,
                                      // ),
                                    ]),
                              );
                            }
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 135),
                      child: Image.asset(
                        'asset/suharyunibulat.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Bab 1, Modul A'),
                          Icon(Icons.folder_open),
                        ],
                      ),
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.bab1modulariha),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Bab 2, Modul B'),
                        Icon(Icons.folder_open),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Bab 3, Modul C'),
                        Icon(Icons.folder_open),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Bab 4, Modul A'),
                        Icon(Icons.folder_open),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Bab 4, Modul B'),
                        Icon(Icons.folder_open),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 30,
                indent: 15,
                endIndent: 15,
                thickness: 1,
              )
            ]),
          ),
        ));
  }
}

getData() {}
