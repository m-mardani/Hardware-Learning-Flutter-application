import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class lcd_flat_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<lcd_flat_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/NwB59K_iwJ8';
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
              title: const Text('تعمیر کابل فلت'),
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
                      '''چند نکته درباره تعمیر و تعویض کابل فلت لپ تاپ
به طور کلی فلت لپ تاپ را می‌توان به دو مورد فلت LED و فلت LCD تقسیم کرد. فلت LCD فلتی است که برای لپ تاپ هایی با صفحه نمایش LCD استفاده می‌شود و پین‌های بزرگتری نسبت به فلتهای LED دارد. فلت LED نیز همانگونه که از نام ان پیداست فلتی است که در لپ تاپ ‌هایی با صفحه نمایش LED استفاده می‌شود.

در اغلب لپ تاپ های مورد استفاده، برای تعمیر و تعویض کابل فلت لپ تاپ، نیاز به خارج کردن صفحه نمایش است. برای این کار  می‌بایست صفحه نمایش را به آرامی بر روی صفحه کیبورد بخوابانید و پس از باز کردن صفحه نمایش، کابل فلت رو که معمولاً با چسپ به صفحه نمایش متصل شده جدا کنید. برای این کار ابتدا به آرامی چسب را از بالای محل اتصال باز کنید و کابل فلت را به سمت بیرون بکشید.

در روند تعویض و تعمیر کابل فلت لپ تاپ توجه داشته باشید که می‌بایست این کار را به آرامی انجام دهید. پس از جدا کردن کابل فلت لپ تاپ، فلت جدید و سالم را جایگزین کرده و در ادامه صفحه نمایش لپ تاپ را به دستگاه وصل کنید. احتمالاً برای چفت شدن قاب نیاز به فشاری اندک باشد تا خارها مجدداً در جای خود قرار گیرند.


کارکرد و نقش اصلی کابل فلت در انواع لپ تاپ به این صورت است که این قطعه داده ها و تصاویر را از مادر برد لپ تاپ به صفحه نمایش آن ( LED,LCD ) انتقال می دهد، قابل ذکر است که این قطعه یکی از قطعات قابل تعمیر میباشد.

علائم خرابی کابل فلت:
مشکی بودن صفحه نمایش در حالیکه لپ تاپ روشن میباشد
تاریک بودن LCD در حال کار کردن لپ تاپ
رنگ صفحه نمایش به صورت سیاه و سفید در می آید
خرابی پیکسل ها به صورتیکه خطوط راه راه و عمودی روی صفحه ظاهر می شوند
در صورت مشاهده هر کدام از این علائم و خرابی کابل فلت، می توانید با مراجعه یا تماس با افق سیستم برای تعمیر یا تعویض این قعطه اقدام فرمایید.''',
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
