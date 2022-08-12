import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class change_chip_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<change_chip_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/mmI57VtAY4Q';
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
              title: const Text(' تعویض چیپ دستگاه'),
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
                      '''مادربرد ها به طور کلی دارای دو دسته چیپ های شمالی و جنوبی هستند. همان طور که مادربرد یا برد مادر صفحه ی اصلی در سیستم کامپیوتر می باشد. به عبارت بهتر می توان گفت در صورتی که این چیپ ها و یا سایر قطعات موجود بر روی مادربرد با مشکل رو به رو شوند عملکرد این قطعه دچار اختلال شده و کارایی درستی ارائه نمی کند. ریبال یا تعمیر این چیپ ها در اغلب موارد امکان پذیر بوده و به تعویض آن نیازی نیست.

اگر به هر دلیل آسیب دیدگی چیپ مادربرد پیشرفته بود و امکان ریبال کردن آن وجود نداشت. لازم است این قطعه توسط متخصصان حرفه ای با نمونه ی اصلی تعویض شود. برای تعویض چیپ مادربرد مراحل زیر را دنبال کنید. همچنین می توانید به منظور درک بهتر از فیلم “آموزش تعویض چیپ مادربرد” در همین صفحه استفاده کنید. تمامی مراحل در فیلم آموزشی به ترتیب انجام شده و تماشای آن به شما کمک می کند تا اطلاعات لازم برای چگونگی تعویض چیپ مادربرد را به دست آورید.
در این بخش آموزش های خاصی ندارد فقط باید با تمرین و تکرار بتوانید مهارت خود را افزایش دهید.
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
