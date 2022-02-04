import 'package:flutter/material.dart';
import 'package:siswa/page/laporan_aij_page.dart';
import 'package:siswa/page/materi_aij.dart';
import 'package:siswa/route/route.dart';

class AIJMapelPage extends StatelessWidget {
  const AIJMapelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Text(
            'Kelasku',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  InkWell(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Administrasi Infrastruktur Jaringan',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'Tingkat 11',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        color: Colors.red,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () => Navigator.pushNamed(
                          context, Routes.guru7nurfadhilah)),
                  const SizedBox(
                    height: 15,
                  ),
                  // const Divider(
                  //   height: 30,
                  //   thickness: 1,
                  // ),

                  const TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.red,
                    tabs: [
                      Tab(
                        text: 'Materi',
                      ),
                      Tab(
                        text: "Laporan",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        MateriAij(),
                        LaporanAij(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: IconButton(
                      color: Colors.indigo[400],
                      iconSize: 50,
                      icon: const Icon(
                        Icons.add_circle,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.tambahbab),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
