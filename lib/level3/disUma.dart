import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class disuma_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<disuma_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/mO237FXyzVM';
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
              title: const Text('UMA غیر فعال کردن '),
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
                      '''منظور از سوئیچ شدن گرافیک در لپ تاپ لنوو، انتخاب کارت گرافیک در لپ تاپ لنوو است. اگر در لپ تاپ لنوو از دو کارت گرافیک استفاده شده باشد، شما برای اجرای برنامه ها می توانید یکی از این دو کارت گرافیک را انتخاب کنید. استفاده از دو کارت گرافیک چیز جدیدی نیست و سالهاست که شرکت های تولید کننده لپ تاپ از این روش استفاده می کنند. در این لپ تاپ ها از یک کارت گرافیک آنبورد یا یکپارچه (integrated) با توان کمتر و از یک کارت گرافیک مجزا یا مستقل (dedicated) با توان بیشتر استفاده می شود.
                      سوئیچ شدن گرافیک در لپ تاپ لنوو در بایوس
برای سوئیچ شدن گرافیک در لپ تاپ لنوو، لپ تاپ را خاموش کنید. حالا لپ تاپ را روشن کنید و با زدن دکمه F2 وارد تنظیمات بایوس شوید. دربرخی مدل ها بر ورود به بایوس از دکمه F1 و یا از دکمه Novo (در حالت خاموش لپ تاپ)که معمولا با یک سوزن فشار داده می شود استفاده کنید. ترجیحاً برای موفقیت بیشتر پیش از روشن کردن لپ تاپ، شروع به زدن دکمه F2 کنید. با استفاده از کلید های جهت بین منو های تنظیمات بایوس حرکت کنید تا وارد تنظیمات تب Configuration  شوید. برای ورود به آن از دکمه Enter استفاده کنید و مراحل زیر را دنبال کنید:

به روی گزینه Graphic Device بروید و کلید Enter را بزنید.
حالا گزینه Graphics Device را انتخاب کرده و دکمه Enter را بزنید.
با زدن دکمه، منوی کشویی در مقابل آن باز می شود.
یکی از دو گزینه کارت گرافیک آنبرد (UMA)  یا امکان سوئیچ کارت گرافیک (Switchable Graphics) را انتخاب کنید.

در فرایند سوئیچ شدن گرافیک در لپ تاپ لنوو، در صورت انتخاب کارت گرافیک آنبرد، لپ تاپ تنها از یک کارت گرافیک آنبرد استفاده می کند و امکان تعویض کارت گرافیک در برنامه ها وجود نخواهد داشت. پس مطمئن شوید که Switchable Graphics را انتخاب می کنید. حالا می توانید پس از بوت در منوی نرم افزار مدیریت کارت گرافیک Nvidia Control Panel یا AMD Catalyst که در ادامه توضیح می دهیم، متناسب با هر برنامه کارت گرافیک مورد نظر خود را انتخاب کنید.  در برخی مدل ها، در منوی بایوس، برای انتخاب کارت گرافیک به منوی Config و سپس Graphic Devices بروید. دراین منو سه حالت در اختیار شما قرار می گیرد:

Integrated Graphics یا همان کارت گرافیک آنبرد
Discrete GPU یا کارت گرافیک مستقل
Nvidia Optimus که در آن لپ تاپ به صورت اتوماتیک کارت گرافیک را انتخاب می کند.

این فرآیندی که در ویديو مشاهده خواهید مراحل غیر فعال کردن گرافیک اصلی و استفاده از گرافیک آنبرد هستش ...
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
