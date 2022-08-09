import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class transformer_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<transformer_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/UchitHGF4n8';
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
              title: const Text('ترانسفورمر'),
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
                      '''ترانسفورماتور یا ترانسفورمر به وسیله‌ای است که انرژی الکتریکی را به وسیله دو یا چند سیم‌پیچ و از طریق القای الکتریکی از یک مدار به مداری دیگر منتقل می‌کند.

به این صورت که جریان جاری در مدار اول (اولیهٔ ترانسفورماتور) موجب به وجود آمدن یک میدان مغناطیسی در اطراف سیم‌پیچ اول می‌شود، این میدان مغناطیسی به نوبهٔ خود موجب به وجود آمدن یک ولتاژ در مدار دوم می‌شود که با اضافه کردن یک بار به مدار دوم این ولتاژ می‌تواند به ایجاد یک جریان ثانویه بینجامد.
اگر دو سیم پیچ را در کنار یکدیگر قرار داده و از یکی از آنها جریان متغیری عبور دهیم ، در سیم پیچ دوم ولتاژی القا می شود . در واقع با عبور جریان متغیر از سیم پیچ اولیه یعنی سیم پیچی که ورودی به آن اعمال می شود ، در اطراف آن یک میدان مغناطیسی متغیر ایجاد می شود . این میدان متغیر، سیم پیچ دوم را قطع می کند و سبب القای ولتاژ در آن می شود .
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
