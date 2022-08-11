import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class socket_change_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<socket_change_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/XhlKsETrREU';
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
              title: const Text('آموزش تعویض سوکت '),
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
                      '''مرحله 1: جک قدیمی را برش دهید
به عنوان اولین کار در پروسه تعمیر جک هدفون، بیایید با برش جک قدیمی شروع کنیم. شما باید حدود 1 سانتی متر سیم از جک خارج کنید. این کار ضروری نیست، اما جلوگیری از آسیب دیدن سیم در نزدیکی جک، ایمن تر است.

برای برش کابل می توانید از سیم چین یا یک قیچی استفاده کنید. هنگام استفاده از سیم چین مراقب باشید. مانند قیچی آنها را اداره کنید. انتهای برش را از بدن دور نگه دارید. بعد از قطع سیم باید عایق را بردارید و بسته به هدفون خود باید 3 یا 4 یا 5 سیم داشته باشید. سه یا چهار سیم نشان دهنده یک هدفون استریو بدون میکروفون و 5 سیم نشان دهنده کنترل میکروفون یا میزان صدا است

مرحله 2: عایق را بردارید
قبل از لحیم کاری باید عایق سیم ها را بردارید، این می تواند با سوزاندن نوک سیم ها با کمک یک شمع یا چوب کبریت انجام شود. از بین بردن عایق ممکن است باعث شارژ شدن سیم شود، شما باید سیم را با مقداری کاغذ سنباده تمیز کنید قبل از اینکه آن را به جک 3.5 میلی متری جدید بچسبانید.

مرحله 3: لحیم کاری
مرحله آخر تعمیر جک هدفون، اتصال لحیم کاری سیم به جک هدفون جدید است. بهترین روش استفاده از مقداری لحیم گداخته شده روی سیم و لحیم کاری سیم قبل از لحیم کاری نهایی و اتصال آن به جک هدفون جدید است.

اگر دو یا چند سیم رنگی مسی دارید، باید آن را با هم لحیم کنید و به طولانی ترین ترمینال در جک هدفون جدید لحیم کنید. در مرحله بعدی، باید سیمهای کانال مجزا را که معمولاً به رنگ قرمز و آبی و قرمز و سبز کد شده اند لحیم کنید. قبل از قرار دادن درپوش هدفون در ورودی، همه ترمینال ها را پس از لحیم کاری هدفون از نظر صوتی بررسی کنید.


روند لحیم کاری خیلی راحت تر از برداشتن جک DC است. مخصوصا اگر مستقیم بر روی مادربرد لحیم شود. برای لحیم کردن آن را در محل خودش بر روی مادربرد قرارر دهید. سپس مقداری روغن لحیم به آن بمالید. حالا تمام پین ها را یک به یک بر روی محل های اتصالشان در مادربرد با سیم قلع لحیم کنید.

اگر جک DC  لپ تاپ شما با کانکتور به مادربرد متصل می شود کار  نسبتا ساده تر است. برای اتصال کانکتور به مادربرد و محکم کردن جک DC بر روی مادربرد آن را همانند قبل در جای خود قرار دهید.

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
