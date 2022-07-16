import 'package:flutter/material.dart';
import 'package:media_songs/prsentaion/widget/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                // back button and menu button

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: NewBox(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Text("P L A Y L I S T"),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: NewBox(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //cover art , artist name , son name ,

                NewBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/cover.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Ciggrates After Sex",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Apocalypse",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                // start time , shuffle button , repeat button , end time

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4:22"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                // linear bar

                NewBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),

                // previous song , pause paly , skip next song

                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                        child: NewBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NewBox(
                            child: Icon(
                              Icons.play_arrow,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: NewBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
