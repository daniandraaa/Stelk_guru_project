import 'package:flutter/material.dart';
import 'package:siswa/route/route.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class KelaskuPage extends StatelessWidget {
  const KelaskuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Text(
            'Kelasku',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Administrasi Infrastruktur Jaringan',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tingkat 11',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.red,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, Routes.aijmapelpage),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Teknologi Layanan Jaringan',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tingkat 11',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.red,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, Routes.tljmapelpage),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wide Area Network',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tingkat 12',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.red,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.pushNamed(context, Routes.wanmapelpage),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Administrasi Sistem Jaringan',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tingkat 10',
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    color: Colors.red,
                                  ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, Routes.asjarmapelpage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
