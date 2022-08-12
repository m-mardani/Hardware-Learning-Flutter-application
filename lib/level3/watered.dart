import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class watered_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<watered_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/JDT8szS6UoY';
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
              title: const Text(' مشکل آبخوردگی دستگاه'),
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
                      '''اقدامات ضروری پس از آبخوردگی لپ تاپ
1. خارج کردن باتری:
در صورت آبخوردگی لپ تاپ نخستین توصیه، جدا کردن باتری لپ تاپ، در کسری از ثانیه است. این کار به پیشگیری از سوختن قطعات کامپیوتر کمک می‌کند.

2. جدا کردن کابل ها و پورت ها:
هر گونه کابل USB اعم از موس، هارد اکسترنال، آداپتور لپ تاپ و… که به لپ تاپ متصل شده اند را خارج نمایید. این کار را سریع و بلافاصله پس از خارج کردن باتری لپ تاپ انجام دهید.

3. خشک کردن با هوای آزاد:
توصیه دیگر در صورت آبخوردگی لپ تاپ، خشک کردن لپ تاپ با هوای آزاد است. اگر میزان مایع وارد شده به لپ تاپ کم است، – مثلا تنها چند قطره است- می‌توانید برای خشک کردن لپ تاپ از سشوار کمک بگیرید. از باد متوسط سشوار کمک بگیرید و لپ تاپ را خشک کنید. از نزدیک کردن باد گرم سشوار به لپ تاپ خودداری نمایید. باد گرم سبب خرابی قطعات می‌گردد.

4. خشک کردن لپ تاپ با یک دستمال های چندلایه:
اگر مایع بطور سطحی وارد لپ تاپ شد، می توانید با استفاده از دستمال های چند لایه و چند تکه چوب نازک (ترجیحا خلال دندان) شروع به خشک کردن آب وارد شده در لپ تاپ نمایید.

5. خارج کردن کیبورد:
در صورت آبخوردگی لپ تاپ می‌توانید صفحه کلید لپ تاپ را خارج کرده و سطح زیرین آن را خشک کنید. اگر میزان آب وارد شده به لپ تاپ کم است، کیبورد را خارج کنید و زیر کیبورد را خشک کنید. برای اطلاع از شیوه این کار می‌توانید روی جستجوهای اینترنتی حساب باز کنید. در غیراینصورت به مراکز تعمیر لپ تاپ مراجعه نمایید.

6. استفاده از الکل:
اگر میزان مایع وارد شده به لپ تاپ بالاست، می‌توانید از الکل استفاده کنید تا مایعات موجود در لپ تاپ، به کمک الکل 99 درصد از بین بروند. برای این کار یک جعبه و یا ظرف بزرگ انتخاب کنید. ظرفی که لپ تاپ بتواند به راحتی وارد آن شود. میزان الکل مورد نیاز را در جعبه و یا ظرف بریزید و لپ تاپ را چند دقیقه درون آن قرار دهید و شروع به چرخاندن آن نمایید تا الکل به تمام قسمت های وارد شود.

7. جدا کردن قطعات دستگاه:
در صورت آبخوردگی لپ تاپ گزینه‌ی پیشنهادی آخر ما جدا کردن قطعات دستگاه است. اگر میزان آب وارد شده به دستگاه بالاست، احتمالا نیاز به جدا کردن قطعات لپ تاپ باشد. در این شرایط قطعات لپ تاپ جدا شده و برای مدت زمانی به همین شکل باقی می‌مانند تا رطوبت موجود در آنها خشک شود.

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
