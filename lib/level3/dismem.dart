import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class disram_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<disram_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/RA9mmhIFKBs';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
            appBar: AppBar(
              title: const Text('onBoard Ram غیر فعال کردن '),
              backgroundColor: Color.fromARGB(255, 69, 9, 129),
            ),
            body: ListView(
              children: [
                player,
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  width: 350,
                  child: Expanded(
                    child: Text(
                      '''در بعضی مواقع که رم های آنبرد لپتاپ خراب میشوند یا یک اتصالی پیدا میکنند امکان تعویض آن ها وجود ندارد و باید اپن هارو غیر فعالشون کرد ...
                      در این ویدیو مشاهده خواهید کرد که چطوری این فرآیند انجام میشه
''',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ));
}
