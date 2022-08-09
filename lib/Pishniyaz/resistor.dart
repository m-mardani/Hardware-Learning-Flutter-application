import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class resistor_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<resistor_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/lKwjouNT4C8';
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
              title: const Text('مقاومت'),
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
                      '''مقاومت قطعه ای است که ویژگی اصلی اون داشتن مقاومت الکتریکی هست که این خاصیت باعث محدود شدن جریان الکتریکی ( حرکت الکترون ها) در مدارات میشه .

مقاومتها قطعاتی Passive هستند به این معنی که اون ها فقط میتونند توان الکتریکی رو مصرف کنند و نمی تونند توانی رو تولید کنند. معمولا از مقاومتها در بخش هایی از مدار استفاده میشه که در اون بخش ها قطعات active مثل IC ها ، میکروکنترلرها ، آپ امپ ها وجود دارند و بیشتر کاربردش هم در محدود کردن جریان ، تقسیم ولتاژ و Pull-up کردن خطوط ورودی و خروجی است. ( اگر با مقاومتهای Pull-up آشنا نیستید پیشنهاد میکنیم از این لینک استفاده کنید.)

واحد اندازه گیری مقاومت :

مقدار مقاومتی که یک مقاومت الکتریکی از خودش نشون میده ، با واحد اهم(ohm) سنجیده میشه و نماد اون هم Omega بزرگ در یونانی هست. ( یعنی Ω ) . مقاومت 1 اهم بین دو نقطه وجود دارد ، اگر بین این دو نقطه ولتاژ 1 ولت وجود داشته باشه و از اون دو نقطه جریان 1 آمپر بگذرد. با استفاده از واحد های SI ( مثل کیلو ، مگا و گیگا) میشه مقدار مقاومتهای بزرگ رو خیلی ساده تر بیان کرد. مثلا خیلی اوقات ما میشنویم که میگن مقاومتی در حدود کیلواهم یا مگااهم یا … پس از این پس به جای این که بگیم مقاومت 4700 اهم ، میگیم مقاومت 4.7 کیلو اهم و یا به جای مقاومت 5600000 اهم یا 5600K اهم میگیم مقاومت 5.6 مگا اهم.
مقاومتها رو میشه در شکل ها و اندازه های مختلف دید. هم میتونن به صورت Through-hole و هم به صورت نصب سطحی (Surface-mount) باشن. به این دو نوع مقاومت به اختصار PTH ( مخفف plated through-hole ) و SMD/SMT ( مخفف surface-mount technology or device ) گفته میشه.
مقاومتها میتونن از مواد مختلفی ساخته بشن ولی امروزه اکثر مقاومتها ازجنس فیلم کربن یا فیلم فلز یا فیلم اکسید فلزی هستند. در این نوع مقاومتها معمولا یک فیلم رسانا ( هر چند که مقداری مقاومت دارند ) دور یک هسته سرامیکی پیچیده می شود و سپس با یک ماده عایق پوشانده میشود. اکثر مقاومتهای استاندارد از فیلم فلز یا فیلم کربن ساخته شده اند.
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
