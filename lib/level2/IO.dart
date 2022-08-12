import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class io_main extends StatefulWidget {
  resistor_page createState() => resistor_page();
}

class resistor_page extends State<io_main> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = 'https://youtu.be/gwGrKpSnE7E';
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
              title: const Text('I/O'),
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
                      '''در این مقاله سعی میکنم فقط به ارتباطات و وظایف ،در نهایت هم به خرابی ها و نشانه های خرابی این آی سی بپردازم (به به)

این آی سی با پورت های PS/2 و LPT، COM در ارتباط می باشد.همچنین این آی سی یک ارتباط 8bit با bios (لاین ارتباطی) و یک ارتباط 8bit با  ADC و بلعکس و پشتیبانی کردن از استاندارد های MIDI  و ACPI را بر عهده دارد.

شاید سر زبانترین و مهم ترین وظیفه این آی سی کنترل ورودی و خروجی باشد(ولتاژ،خیلی کم دیتا)

از طرف دیگر این آی سی با F_PANEL در بعشی مدل مادربوردها ارتباط مستقیم و در بعضی مدل ها ارتباط غیر مستقیم دارد.

از دیگر کارهای آی سی I/O تامین ولتاژ باطری بایوس می باشد و البته حمایت از ولتاژ باطری به کمک یک فلیپ فلاپ.


این آی سی در بعضی مدل ها تامین کننده ولتاژ کریستال چیپ جنوبی و همچنین کریستال IC CLOCK می باشد

کنترل عملکرد Cpu Fan و System Fan و همچنین تامین ولتاژ تحریک ترانزیستور های مدار pwm یعنی Vcore

و تنطیم و کنترل پاورگود ،پاور بر عهده همین آی سی نیم وجبی می باشد چون این آی سی با سیم های بنفش و خاکستری پاور در ارتباط است(بنفش ولتاژش یکم بالا پایین بشه پاور گود نداریم)

ولتاژهای مصرفی این آی سی 3.3 و 5 ولت می باشد.

خرابی های آی سی I/o:

-داغ کردن بیش از حد

-جریان کشی

-نداشتن ولتاژ

-بادکردگی و خالزدگی

-کثیفی بیش از حد در پایه ها (این خیلی مسخره است دیگه ،همون قلع مردگیه دیگه)

نشانه های خرابی IC I/O :

–سرد بودن CPU مساوی با عدم تصویر و نداشتن ولتاژ Vcore

-عدم تصویر و گرم بودن cpu  (یعنی الان همتون از خنده دارین می میرین ،خوب نشانه خرابیه دیگه)

-کار نکردن پورت های  com=lpt=ps/2

-نداشتن ولتاژ در پایه های چیپ جنوبی

– نداشتن ولتاژ تحریک در پایه های تذانزیستور fet اطراف NB

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
