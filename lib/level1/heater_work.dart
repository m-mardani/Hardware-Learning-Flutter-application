import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class heater_work_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<heater_work_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/9EV78UPvRfY';
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
              title: const Text('آموزش حرفه ایی کار با هیتر'),
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
                      '''ببشترین کاربرد این دستگاه در لحیم کاری و برداشتن قطعات در زمان اندک و با دقت زیاد است. علاوه بر این، تعمیرکاران از این ابزار تعمیراتی برای اتصال و برداشتن قطعات SMD مانند PLCC ها، BGA ها، آی سی ها و SOIC ها استفاده می کنند.

از این دستگاه به طور گسترده برای پیش گرمایش، خشک کردن، جدا کردن رنگ های لاکی، داغ کردن فضاهای کوچک، ذوب کردن و غیره استفاده می شود. در واقع این دستگاه یکی از ضروری ترین ابزارهای تعمیرات موبایل است. به همین دلیل خرید هیتر و هویه دارای کیفیت و کارآیی خوب برای هر تعمیرکار موبایلی واجب است.

راهنمای خرید هیتر و هویه

1-کنترل دما

اکثر هیتر و هویه های موجود در بازار داری قابلیت کنترل دما هستند. این قابلیت به تعمیرکار کمک می کند تا دمای دستگاه را با توجه به نیاز خود تنظیم کند. داشتن این قابلیت یکی از اصلی ترین نکاتی است که باید قبل از خرید یک هیتر و هویه مد نظر قرار دهید.

کمترین درجه معمولا دمای مناسب برای انجام کار با این دستگاه است. مطمئن شوید دستگاهی که می خرید دارای دقت دمای تقریبی 10 درجه سانتی گراد است و تنظیم دمای آن بی عیب و نقص باشد.

2- زمان گرم کردن

قبل از خرید هیتر و هویه بایستی بدانید چه مدت طول می کشد تا نوک هویه و دسته هیتر آن گرم می شوند. همیشه هیتر و هویه ای بخرید که سرعت گرم شدن آن بالا است چرا که این کار باعث می شود تا زمان کمتری تلف شود. هم چنین داشتن قابلیت ریکاوری حرارت سریع نیز یکی دیگر از پارامترهایی است که باید در نظر گرفت.



3- نازل هیتر

انتخاب سر نازل مناسب برای تعمرات موبایل بسیار مهم است. نازل ها در اشکال مختلف وجود دارند که به راحتی و با استفاده از پیچ گوشتی قابل تعویض هستند. نازل های ریز برای کار با تراشه های کوچک مناسب تر هستند چرا که می توانید هوای داغ خروجی از هیتر را روی آن قسمت متمرکز کنید. از نازل های بزرگ تر نیز برای گرم کردن محدوده های بزرگ تر استفاده کنید.

4- پرتاب باد

دقت داشته باشید که پرتاب باد هیتر و هویه یکی از مهم ترین فاکتورهای این دستگاه ها است. بسیاری از هیتر و هویه های موجود در بازار دارای پرتاب باد ضعیفی هستند و شدت جریان هوای داغ خروجی از آنها مناسب نیست.

مینیمم شدت هوای خروجی از این دستگاه ها بایستی حدود 20 لیتر بر دقیقه باشد. این دستگاه ها علاوه بر داشتن میزان پرتاب باد مناسب بایستی قابلیت تنظیم شدت هوا را نیز داشته باشند. شما باید بتوانید هوای داغ کافی را برای کار بر روی قطعه مورد نظر داشته باشید و در عین حال بتوانید شدت هوا را نیز تغییر دهید. کنترل پرتاب باد دستگاه باعث می شود تا قطعات سست و سبک از جای خود کنده نشوند.



5- امن بودن

امنیت دستگاه یکی دیگر از نکات مهم قبل از خرید هیتر و هویه است. مطمئن شوید که استفاده از دستگاه مورد نظر امن است. آنتی استاتیک (ESD-Safe) بودن و قابلیت جلوگیری از گرم شدن بیش از حد جزء فاکتورهایی هستند که حتما باید به آنها توجه کنید. برخی هیتر و هویه ها علاوه بر این دو دارای قابلیت جلوگیری از اتصال کوتاه و جریان بیش از حد زیاد هستند.

چگونه از هیتر و هویه استفاده کنیم؟

ابتدا دستگاه را روشن کنید. سپس دما و پرتاب باد دستگاه را با ولوم های چرخشی روی آن تنظیم کنید. شما می توانید این دو پارامتر را روی نمایشگر دستگاه مشاهده کنید. سپس حرارت را با فاصله مناسب از محل مورد نظر اعمال کنید و قطعه یا بخش مورد نظر بر روی بورد موبایل را بخوبی گرم کنید. پس از لحیم کاری یا قلع کشی، دستگاه را خاموش کنید.

دمای هیتر برای تعویض سوکت شارژ چقدر باشد؟

یکی از کاربردهای این دستگاه برداشتن قطعات و بخش های مختلف موبایل است. برای برداشتن سوکت شارژ موبایل بایستی دما و شدت هوای دستگاه را تنظیم کنید. تنظیم این دو پارامتر به مارک هیتر و هویه و قدرت آن بستگی دارد. معمولا دمای حدود 400 درجه و پرتاب باد در حالت 2 برای این کار جوابگو خواهد بود. پیشنهاد می کنیم کار را با دمای کمتر شروع کنید و در صورت لزوم آن را بالاتر ببرید. هم چنین اگر دستگاه شما پرتاب باد قوی دارد آنگاه بهتر است ولوم پرتاب باد آن را در حالت 1 قرار دهید.

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