import 'package:flutter/material.dart';
import 'package:siswa/page/tugasbab1binggris.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Bab1AgamaPage extends StatelessWidget {
  final YoutubePlayerController playerController;
  const Bab1AgamaPage({Key? key, required this.playerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: playerController,
        showVideoProgressIndicator: true,
        progressIndicatorColor: const Color(0xffFF0000),
        progressColors: const ProgressBarColors(
            playedColor: Colors.red, backgroundColor: Colors.white38),
        // bottomActions: [
        //   CurrentPosition(
        //     controller: playerController,
        //   ),
        //   ProgressBar(
        //     controller: playerController,
        //   ),
        //   RemainingDuration(
        //     controller: playerController,
        //   ),
        //   FullScreenButton(
        //     controller: playerController,
        //   )
        // ],
      ),
      builder: (contex, player) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: const Text(
            'Agama',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30,
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    'Bab 1 : Patuh Dan Taat Pada Peraturan',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              player,
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A. Apa Saja Agama Yang Ada Di Indonesia',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle,
                                color: Colors.blue[900],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '07:11 min',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(5.0))),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => const TugasBab1Binggris(),
                                ),
                              ),
                              child: SizedBox(
                                  width: 100,
                                  child: Center(
                                    child: Text('kerjakan tugas',
                                        style:
                                            Theme.of(context).textTheme.button),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'B. Agama Islam',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.play_circle,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '07:11 min',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
