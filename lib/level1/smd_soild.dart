import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class smd_soild_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<smd_soild_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/fYInlAmPnGo';
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
              title: const Text('لحیم کاری حرفه ایی smd'),
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
                      '''در لحیم کاری قطعات نصب سطحی با هویه همیشه باید یک پایه از پایه های قطعه را ابتدا لحیم کنید و قطعه را در جای خود تنظیم کنید. لحیم کردن قطعات SMD با هویه، به تعداد پایه های قطعه بستگی دارد.اگر قطعه مورد نظر دوپایه داشته باشد، مانند خازن ها و مقاومت ها ، ابتدا باید یک پایه را لحیم کرده و قطعه را در جای خود فیکس و تنظیم کنیم،سپس پایه بعدی را لحیم کنیم.
قطعات ۳ پایه هم تفاوتی ندارد.
اما برای قطعاتی مانند مدارات مجتمع باید پس از لحیم کردن پایه ای در گوشه قطعه، پایه متقارن آن را لحیم کنید.(بصورت قطری) پس از اینکه در چهار گوشه قطعه یک پایه را لحیم کردید و دیگر نگران حرکت قطعه نبودید به لحیم کردن بقیه پایه ها می پردازید.''',
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
