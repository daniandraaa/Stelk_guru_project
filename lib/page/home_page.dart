import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siswa/page/siswa.dart';
import 'package:siswa/route/route.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class Behavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // static List<Jurusan> fromJsonArray(List<dynamic> jsonArray){
  Future<List<Siswa>> getData() async {
    try {
      final result = await FirebaseFirestore.instance.collection("Siswa").get();
      return result.docs.map(
        (e) {
          return Siswa.fromJson(
            e.data(),
          );
        },
      ).toList();
    } catch (e) {
      rethrow;
    }
  }

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

  // Future<List<Guru>> get() async {
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    final listImage = [
      'asset/logofixxxx.png',
      'asset/abualikotak.png',
      'asset/chaerunnisakotak.jpg',
      'asset/srikotak.jpg',
    ];

    final RxInt indexOf = 0.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ScrollConfiguration(
        behavior: Behavior(),
        child: Container(
          color: Colors.grey[300],
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  color: Colors.grey[300],
                  height: 400,
                  child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlayInterval: const Duration(milliseconds: 5000),
                        autoPlay: true,
                        viewportFraction: 1.0,
                        height: 400,
                        onPageChanged: (index, reason) {
                          indexOf.value = index;
                        },
                      ),
                      items: listImage.map(
                        (e) {
                          String image = e;
                          return Image(
                            // height: MediaQuery.of(context).size.height,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              image,
                            ),
                          );
                        },
                      ).toList()),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 320, top: 20),
                  child: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Colors.red,
                    // activeThumbImage: AssetImage('asset/logo app.png'),
                    // inactiveThumbImage: AssetImage('asset/logo app.png'),
                    value: statusSwitch,
                    onChanged: (value) {
                      setState(() {
                        statusSwitch = !statusSwitch;
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 320,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listImage.map(
                        (e) {
                          int index = listImage.indexOf(e);

                          return Obx(
                            () => Container(
                              width: 10,
                              margin: const EdgeInsets.only(left: 5),
                              height: 10,
                              decoration: BoxDecoration(
                                color: indexOf.value == index
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(55),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                DraggableScrollableSheet(
                  initialChildSize: 0.53,
                  maxChildSize: 0.64,
                  minChildSize: 0.53,
                  // expand: false,
                  builder: (c, s) => Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: CustomScrollView(
                      controller: s,
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 100,
                                margin: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
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
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      FutureBuilder<List<DatabaseSiswa>>(
                                        future: getDataa(),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasError) {
                                            return Text(
                                                snapshot.error.toString());
                                          }
                                          final data = snapshot.data;
                                          if (data != null &&
                                              snapshot.hasData) {
                                            return Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Halo, Suharyuni, ST.',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText1
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)

                                                      // TextStyle(
                                                      //     fontWeight:
                                                      //         FontWeight.bold),
                                                      ),
                                                  Text(
                                                    data[0].jurusan.toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption,
                                                  ),
                                                  Text(
                                                    'Tingkat ' +
                                                        data[0]
                                                            .tingkat
                                                            .toString(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption,
                                                  ),
                                                  Text(
                                                    data[0].kelas,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption,
                                                  ),
                                                ]);
                                          }
                                          return const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        },
                                      ),
                                      const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'asset/suharyunibulat.png'),
                                        radius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 15,
                            child: Container(),
                          ),
                        ),
                        SliverGrid.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          children: [
                            InkWell(
                                child: Image.asset(
                                  'asset/kelaskufix.png',
                                ),
                                onTap: () => Navigator.pushNamed(
                                    context, Routes.kelasku)),
                            InkWell(
                                child: Image.asset('asset/forumfix.png'),
                                onTap: () =>
                                    Navigator.pushNamed(context, Routes.forum)),
                            InkWell(
                                child: Image.asset('asset/gurufix.png'),
                                onTap: () =>
                                    Navigator.pushNamed(context, Routes.guru)),
                            InkWell(
                                child: Image.asset('asset/prestasifix.png'),
                                onTap: () => Navigator.pushNamed(
                                    context, Routes.prestasi)),
                          ],
                        ),
                      ],
                    ),
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
