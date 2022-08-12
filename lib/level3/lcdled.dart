import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class lcdled_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<lcdled_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/uHvNyx7eEjo';
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
              title: const Text('led/lcd backlight'),
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
                      '''Blank Screen – راه حل اول : ممکن است LCD نیاز به تعویض داشته باشد :
ابتدا لپ تاپ را خاموش کرده و آن را به یک مانیتور خارجی متصل کنید. بعد از این کار نوت بوک را مجددا روشن کنید. اگر نمایشگر خارجی تصویر را نشان داد ، ال سی دی یا ال ای دی لپ تاپ شما باید تعویض شود.



Blank Screen – راه حل دوم : ریست کردن تنظیمات بایوس :
اگر با وجود اتصال مانیتور خارجی به لپ تاپ ، باز هم تصویر نمایش داده نشد ، باید تنظیمات بایوس ( BIOS  ) ریست شود. برای این کار مراحل زیر را انجام دهید :

لپ تاپ را خاموش کنید.
باتری را از دستگاه جدا کنید.
در صورتی که باتری داخلی بود ، دکمه Power را به مدت 30 ثانیه نگه دارید. (این کار باعث خالی شدن شارژ باتری داخلی می‌شود.)
کابل آداپتور لپ تاپ را بدون اتصال باتری به دستگاهتون وصل کنید.
مجددا لپ تاپ را روشن کنید.
با انجام این کار تنظیمات BIOS بازنشانی می‌شود و در اکثر موارد مشکل صفحه سیاه لپ تاپ بر طرف خواهد شد.

مشکل GPU یا مادربرد:
اگر مشکل صفحه سیاه نمایشگر لپ تاپ با انجام موارد بالا برطرف نشد ، مشکل از پردازنده گرافیکی ( GPU ) یا مادربرد است. در بدترین حالت ممکن شما باید به فکر خرید یک لپ تاپ جدید باشید.

مشکلات مربوط به پیکسل‌ها
در این جا با سه مشکل مختلف روبرو هستید:

پیکسل داغ ( Hot Pixel )  : پیکسل‌هایی که همیشه از حالت عادی  روشن‌تر هستند.

پیکسل سوخته یا پیکسل مرده ( Dead Pixel )  : در این حالت برخی پیکسل‌ها خاموش هستند و هیچ وقت روشن نمی‌شوند.

پیکسل‌های به جا مانده یا گیر کرده ( Stuck Pixel ): به مجموعه پیکسل‌هایی گفته می‌شود که در کنار هم قرار گرفته و یک مربع را تشکیل داده‌اند که همیشه خاموش یا روشن هستند.

فرقی ندارد لپ تاپ شما قدیمی باشد یا جدید. در هرصورت ممکن است این مشکل برای نمایشگر هر نوت بوکی اتفاق بیفتد که معمولا با تعویض GPU این مساله برطرف می‌شود. و در برخی موارد هم می‌توان با مراجعه به تعمیرگاه معتبر مانند پارت ایران و تعمیر LCD لپ تاپ ، این مشکل برطرف خواهد شد.

مشکلات انتقال سیگنال‌های دیجیتال :
زمانی که این مشکل رخ می‌دهد ، نقاط ، خطوط یا اشکال غیر عادی بر روی نمایشگر مشاهده می‌شود که دیدن تصاویر را دشوار می کنند. این مساله هنگام جابجایی و انتقال تصاویر رخ می‌دهد. بروز چنین موردی می‌تواند به دلیل خرابی کابل فلت یا خرابی تراشه گرافیک باشد.


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
