import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class usbhdmi_prob_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<usbhdmi_prob_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/uYI0DdTvXvo';
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
              title: const Text('HDMI,USB کارنکردن پورت '),
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
                      '''در مرحله اول وارد صفحه بایوس شده و وضعیت Enable بودن USB ها رو بررسی کنید
در مرحله بعد روی مادربرد جامپر تعیین نوع ولتاژ USB رو بررسی کنید که حتما روی مادربرد باشه
در مرحله بعدی ولتاژ پایه اول پورتهای USB رو اندازه گیری کنید .باید 5 باشه (اگر 5 ولت رو نداشتید در ابتدا از اتصال کوتاه نبودن تمام پورتها اطمینان حاصل کنید و بعد مسیر I/O تا پورتها روبررسی و نهایتا خود I/O تعویض شود.(

تبصره : در برخی از مادربرد ها مخصوصا لپ تاپ ها یک آی سی 8 پایه که نقش یک سوییچ دوبل رو داره وظیفه قطع و وصل کردن ولتاژ USB رو بر عهده داره و معمولا برای هر دو پورت یکی از این آی سی ها استفاده میشه .

در صورتی که 5 ولت روی همه پورتها بود نتیجه این میشه که مشکل از ولتاژ ها نیست و پورتها در انتقال دیتا مشکل دارند . دو پایه وسط پورتهای USB که (DATA- , DATA+) نامیده میشن ؛ از نظر اتصال کوتاه بررسی شود .
تبصره : وجود اتصال کوتاه در این دو پایه می تواند مربوط به خرابی پل جنوبی باشد . در زیر در مورد آن توضیح خواهم داد.
در مرحله بعد مسیر دو پایه دیتا تا پل جنوبی (در مادربرد های تک چیپ منظور همون چیپ اصلی هستش ) رو بررسی می کنیم . دو پایه دیتا بعد از پورت یو اس بی وارد یک قطعه ریز SMD بنام فـیلتر EMI میشن و از خروجی این فیـلتر مستقیما و بدون واسطه —-تاکید می کنم بدن واسطه ——وارد چیپ میشن

این فیـلتر ها برای محافظت از چیپ در برابر ورود نا خواسته ولتاژ از طریق پورت و ابزار های USB به چیپ هست . و در صورت بروز خطا این فیلـتر ها می سوزند تا مسیر پورت به چیپ قطع شود . یعنی در صورت سلامت باید از یایه های دیتا به پشت این فــیلتر ها باید به هم با مولتی متر راه بدهد .
در مرحله بعد اگر ولتاژ وجود داشت ولی یواس بی کار نکرد و هیچ اتصالی هم در کار نبود دیگر وقت آن رسیده که بگوییم چیپ مشکل دارد –

در این مرحله به خاطر این که احتمال دیسکانکتی چیپ وجود دارد ابتدا چیپ را برای رفع قلع مردگی مقداری هیت می دهیم (هر چند راهکار حرارت دادن برای رفع قلع مردگی اصولی نیست و احتمال باز گشت وجود دارد و بهتر است چیپ ریبال شود(

از نشانه های دیگر خرابی چیپ جنوبی اتصال کوتاه دو پایه دیتای یک یا چند پورت USB با وجود سلامت فــیلتر ها و همینطور عدم خرابی خود پورت می باشد که بیانگر اتصالی در خود چیپ جنوبی است

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
